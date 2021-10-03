// VAE in tensorflow.js
// based on https://github.com/songer1993/tfjs-vae

const Max = require('max-api');
const tf = require('@tensorflow/tfjs-node');
const fs = require('fs');
const pathlib = require('path');
const sampleLayer = require('./sampleLayer.js');

const utils = require('./utils.js')
const data = require('./data.js')

// Constants
const NUM_DRUM_CLASSES = require('./constants.js').NUM_DRUM_CLASSES;
const LOOP_DURATION = require('./constants.js').LOOP_DURATION;

const ORIGINAL_DIM = require('./constants.js').ORIGINAL_DIM;
const { BEAT_RESOLUTION } = require('./constants.js');
const INTERMEDIATE_DIM = 64;
const LATENT_DIM = 2;

const BATCH_SIZE = 64;
const TEST_BATCH_SIZE = 128;
const TS_LOSS_COEF = 1.0;  // coef for timeshift loss
const VEL_LOSS_COEF = 1.5;  // coef for velocity loss

let dataHandlerOnset;
let dataHandlerVelocity;
let dataHandlerTimeshift;
let dataOnsetZ, dataOnOffRatioZ;
let dataMeanStd = null;

let model = null;
let numEpochs = 150; // default # of epochs

async function loadAndTrain(train_data_onset, train_data_velocity, train_data_timeshift) {
  console.assert(train_data_onset.length == train_data_velocity.length && train_data_velocity.length == train_data_timeshift.length);

  // Count onsets for conditioning
  let onsets = tf.greater(tf.tensor3d(train_data_onset, [train_data_onset.length, NUM_DRUM_CLASSES, LOOP_DURATION]), 0.5);
  let onsets_sum = tf.sum(onsets, axis = 2); // for each instruments
  let onsets_kick = tf.gather(onsets_sum, 0, axis = 1); // kick count
  let onsets_hats = tf.mean(tf.gather(onsets_sum, [2, 3], axis = 1), axis = 1); // hats count

  let onset_kick_mean = tf.mean(onsets_kick, axis=0); // average # of kick per loop
  let onset_kick_std = tf.moments(onsets_kick, axis = 0).variance.sqrt(); // std for # of kicks

  let onset_hats_mean = tf.mean(onsets_hats, axis=0); // average # of hats per loop
  let onset_hats_std = tf.moments(onsets_hats, axis = 0).variance.sqrt(); // std for # of hats
  console.log("mean/std", onset_kick_mean.dataSync()[0], onset_kick_std.dataSync()[0], onset_hats_mean.dataSync()[0], onset_hats_std.dataSync()[0]);

  let onbeats = tf.gather(onsets, tf.range(0, LOOP_DURATION, BEAT_RESOLUTION, 'int32'), axis = 2);
  let onbeats_kick = tf.sum(tf.gather(onbeats, 0, axis = 1), axis = 1);
  let offbeats_kick = tf.sub(onsets_kick, onbeats_kick);
  onbeats_kick = tf.add(onbeats_kick, tf.scalar(0.00001)); // avoid dividing by zero

  let onoff_ratio = tf.div(offbeats_kick, onbeats_kick);
  let onoff_ratio_mean = tf.mean(onoff_ratio, axis = 0); // for each instance
  let onoff_ratio_std = tf.moments(onoff_ratio, axis = 0).variance.sqrt();
  onoff_ratio_std = tf.add(onoff_ratio_std, tf.scalar(0.00001)); // avoid dividing by zero
  console.log(onoff_ratio_mean.dataSync(), onoff_ratio_std.dataSync())

  let onoff_ratio_z = tf.div(tf.sub(onoff_ratio, onoff_ratio_mean), onoff_ratio_std);

  let onsets_means = tf.mean(onsets_sum, axis = 0); // for each instance
  let onsets_std = tf.moments(onsets_sum, axis = 0).variance.sqrt();
  onsets_std = tf.add(onsets_std, tf.scalar(0.00001)); // avoid dividing by zero
  let onsets_z = tf.div(tf.sub(onsets_sum, onsets_means), onsets_std);

  // shuffle in sync
  const total_num = train_data_onset.length;
  shuffled_indices = tf.util.createShuffledIndices(total_num);
  train_data_onset = utils.shuffle_with_indices(train_data_onset, shuffled_indices);
  train_data_velocity = utils.shuffle_with_indices(train_data_velocity, shuffled_indices);
  train_data_timeshift = utils.shuffle_with_indices(train_data_timeshift, shuffled_indices);
  dataOnsetZ = tf.gather(onsets_z, tf.tensor1d(Array.from(shuffled_indices), 'int32')); // shuffled onset count data
  dataOnOffRatioZ = tf.gather(onoff_ratio_z, tf.tensor1d(Array.from(shuffled_indices), 'int32')); // shuffled onset count data

  // synced indices
  const num_trains = Math.floor(data.TRAIN_TEST_RATIO * total_num);
  const num_tests = total_num - num_trains;
  const train_indices = tf.util.createShuffledIndices(num_trains);
  const test_indices = tf.util.createShuffledIndices(num_tests);

  // create data handlers
  dataHandlerOnset = new data.DataHandler(train_data_onset, train_indices, test_indices); // data utility fo onset
  dataHandlerVelocity = new data.DataHandler(train_data_velocity, train_indices, test_indices); // data utility for velocity
  dataHandlerTimeshift = new data.DataHandler(train_data_timeshift, train_indices, test_indices); // data utility for duration

  // 
  dataMeanStd = {
    onset_kick_mean: onset_kick_mean.dataSync()[0], 
    onset_kick_std: onset_kick_std.dataSync()[0], 
    onset_hats_mean: onset_hats_mean.dataSync()[0], 
    onset_hats_std: onset_hats_std.dataSync()[0],
    onoff_ratio_mean: onoff_ratio_mean.dataSync()[0], 
    onoff_ratio_std: onoff_ratio_std.dataSync()[0]
  }

  // start training!
  if (!model) initModel(); // initializing model class
  startTraining(); // start the actual training process with the given training data
}

function getConditionings(onsets){
  if (dataMeanStd == null) return [0.0, 0.0, 0.0];

  onsets = onsets.reshape([1, NUM_DRUM_CLASSES, LOOP_DURATION]); // batch

  let onsets_sum = tf.sum(onsets, axis = 2); // for each instruments
  let onsets_kick = tf.gather(onsets_sum, 0, axis = 1).dataSync()[0]; // kick count
  let kick_z = (onsets_kick -  dataMeanStd.onset_kick_mean) / dataMeanStd.onset_kick_std;
  let onsets_hats = tf.mean(tf.gather(onsets_sum, [2, 3], axis = 1), axis = 1).dataSync()[0]; // hats count
  let hats_z = (onsets_hats -  dataMeanStd.onset_hats_mean) / dataMeanStd.onset_hats_std;

  let onbeats = tf.gather(onsets, tf.range(0, LOOP_DURATION, BEAT_RESOLUTION, 'int32'), axis = 2);
  let onbeats_kick = tf.sum(tf.gather(onbeats, 0, axis = 1), axis = 1);
  let offbeats_kick = tf.sub(onsets_kick, onbeats_kick);
  onbeats_kick = tf.add(onbeats_kick, tf.scalar(0.00001)); // avoid dividing by zero
  let onoff_ratio = tf.div(offbeats_kick, onbeats_kick).dataSync()[0];
  let onoff_ratio_z = (onoff_ratio -  dataMeanStd.onoff_ratio_mean) / dataMeanStd.onoff_ratio_std;
  console.log(onsets_kick, kick_z, onsets_hats, hats_z, onoff_ratio, onoff_ratio_z);
  return [kick_z, hats_z, onoff_ratio_z];
}

function initModel() {
  model = new ConditionalVAE({
    modelConfig: {
      originalDim: ORIGINAL_DIM,
      intermediateDim: INTERMEDIATE_DIM,
      latentDim: LATENT_DIM
    },
    trainConfig: {
      batchSize: BATCH_SIZE,
      testBatchSize: TEST_BATCH_SIZE,
      optimizer: tf.train.adam()
    }
  });
}

async function startTraining() {
  await model.train();
}

function stopTraining() {
  model.shouldStopTraining = true;
  utils.log_status("Stopping training...");
}

function isTraining() {
  if (model && model.isTraining) return true;
}

function isReadyToGenerate() {
  return (model && model.isTrained);
}

function setEpochs(e) {
  numEpochs = e;
  Max.outlet("epoch", 0, numEpochs);
}

function generatePattern(z1, z2, kick, hats, onoff, noise_range = 0.0) {
  var zs;
  if (z1 === 'undefined' || z2 === 'undefined') {
    zs = tf.randomNormal([1, 2]);
  } else {
    zs = tf.tensor2d([[z1, z2]]);
  }

  // noise
  if (noise_range > 0.0) {
    var noise = tf.randomNormal([1, 2]);
    zs = zs.add(noise.mul(tf.scalar(noise_range)));
  }
  return model.generate(zs, tf.tensor2d([[kick]]), tf.tensor2d([[hats]]), tf.tensor2d([[onoff]]));
}

function encodePattern(inputOn, inputVel, inputTS) {
  return model.encode(inputOn, inputVel, inputTS);
}

async function saveModel(filepath) {
  model.saveModel(filepath);
}

async function loadModel(filepath) {
  if (!model) initModel();
  model.loadModel(filepath);
}

function clearModel() {
  model = null;
}

function bendModel(noise_range) {
  model.bendModel(noise_range)
}

class ConditionalVAE {
  constructor(config) {
    this.modelConfig = config.modelConfig;
    this.trainConfig = config.trainConfig;
    [this.encoder, this.decoder, this.apply] = this.build();
    this.isTrained = false;
  }

  build(modelConfig) {
    if (modelConfig != undefined) {
      this.modelConfig = modelConfig;
    }
    const config = this.modelConfig;

    const originalDim = config.originalDim;
    const intermediateDim = config.intermediateDim;
    const latentDim = config.latentDim;

    // VAE model = encoder + decoder
    // build encoder model

    // Onset input
    const encoderInputsOn = tf.input({ shape: [originalDim] });
    const x1LinearOn = tf.layers.dense({ units: intermediateDim, useBias: true, kernelInitializer: 'glorotNormal' }).apply(encoderInputsOn);
    const x1NormalisedOn = tf.layers.batchNormalization({ axis: 1 }).apply(x1LinearOn);
    const x1On = tf.layers.leakyReLU().apply(x1NormalisedOn);

    // Velocity input
    const encoderInputsVel = tf.input({ shape: [originalDim] });
    const x1LinearVel = tf.layers.dense({ units: intermediateDim, useBias: true, kernelInitializer: 'glorotNormal' }).apply(encoderInputsVel);
    const x1NormalisedVel = tf.layers.batchNormalization({ axis: 1 }).apply(x1LinearVel);
    const x1Vel = tf.layers.leakyReLU().apply(x1NormalisedVel);

    // Timeshift input
    const encoderInputsTS = tf.input({ shape: [originalDim] });
    const x1LinearTS = tf.layers.dense({ units: intermediateDim, useBias: true, kernelInitializer: 'glorotNormal' }).apply(encoderInputsTS);
    const x1NormalisedTS = tf.layers.batchNormalization({ axis: 1 }).apply(x1LinearTS);
    const x1TS = tf.layers.leakyReLU().apply(x1NormalisedTS);

    // Conditioning input
    const encoderCondKick = tf.input({ shape: [1] });
    const encoderCondHats = tf.input({ shape: [1] });
    const encoderCondOnOff = tf.input({ shape: [1] });
    const x1Merged = tf.layers.concatenate().apply([x1On, x1Vel, x1TS, encoderCondKick, encoderCondHats, encoderCondOnOff]);

    // // Merged
    // const concatLayer = tf.layers.concatenate();
    // const x1Merged = concatLayer.apply([x1On, x1Vel, x1TS]);

    const x2Linear = tf.layers.dense({ units: intermediateDim, useBias: true, kernelInitializer: 'glorotNormal' }).apply(x1Merged);
    const x2Normalised = tf.layers.batchNormalization({ axis: 1 }).apply(x2Linear);
    const x2 = tf.layers.leakyReLU().apply(x2Normalised);

    const x21Linear = tf.layers.dense({ units: intermediateDim/2, useBias: true, kernelInitializer: 'glorotNormal' }).apply(x2);
    const x21Normalised = tf.layers.batchNormalization({ axis: 1 }).apply(x21Linear);
    const x21 = tf.layers.leakyReLU().apply(x21Normalised);

    const zMean = tf.layers.dense({ units: latentDim, useBias: true, kernelInitializer: 'glorotNormal' }).apply(x21);
    const zLogVar = tf.layers.dense({ units: latentDim, useBias: true, kernelInitializer: 'glorotNormal' }).apply(x21);
    const z = new sampleLayer.sampleLayer().apply([zMean, zLogVar]);

    const encoderInputs = [encoderInputsOn, encoderInputsVel, encoderInputsTS, encoderCondKick, encoderCondHats, encoderCondOnOff];
    const encoderOutputs = [zMean, zLogVar, z];

    const encoder = tf.model({ inputs: encoderInputs, outputs: encoderOutputs, name: "encoder" })

    // build decoder model
    const decoderInputs = tf.input({ shape: [latentDim] });
    const zLinear = tf.layers.dense({ units: intermediateDim, useBias: true, kernelInitializer: 'glorotNormal' }).apply(decoderInputs);
    const zNormalised = tf.layers.batchNormalization({ axis: 1 }).apply(zLinear);
    const zNormalizedRelu = tf.layers.leakyReLU().apply(zNormalised);

    const decoderCondKick = tf.input({ shape: [1] });
    const decoderCondHats = tf.input({ shape: [1] });
    const decoderCondOnOff = tf.input({ shape: [1] });
    const deccoderMerged = tf.layers.concatenate().apply([zNormalizedRelu, decoderCondKick, decoderCondHats, decoderCondOnOff]);

    const x3Linear = tf.layers.dense({ units: intermediateDim, useBias: true, kernelInitializer: 'glorotNormal' }).apply(deccoderMerged);
    const x3Normalised = tf.layers.batchNormalization({ axis: 1 }).apply(x3Linear);
    const x3 = tf.layers.leakyReLU().apply(x3Normalised);

    // Decoder for onsets
    const x4LinearOn = tf.layers.dense({ units: intermediateDim, useBias: true, kernelInitializer: 'glorotNormal' }).apply(x3);
    const x4NormalisedOn = tf.layers.batchNormalization({ axis: 1 }).apply(x4LinearOn);
    const x4On = tf.layers.leakyReLU().apply(x4NormalisedOn);
    const decoderOutputsOn = tf.layers.dense({ units: originalDim, activation: 'sigmoid' }).apply(x4On);

    // Decoder for velocity
    const x4LinearVel = tf.layers.dense({ units: intermediateDim, useBias: true, kernelInitializer: 'glorotNormal' }).apply(x3);
    const x4NormalisedVel = tf.layers.batchNormalization({ axis: 1 }).apply(x4LinearVel);
    const x4Vel = tf.layers.leakyReLU().apply(x4NormalisedVel);
    const decoderOutputsVel = tf.layers.dense({ units: originalDim, activation: 'sigmoid' }).apply(x4Vel);

    // Decoder for timeshift
    const x4LinearTS = tf.layers.dense({ units: intermediateDim, useBias: true, kernelInitializer: 'glorotNormal' }).apply(x3);
    const x4NormalisedTS = tf.layers.batchNormalization({ axis: 1 }).apply(x4LinearTS);
    const x4TS = tf.layers.leakyReLU().apply(x4NormalisedTS);
    const decoderOutputsTS = tf.layers.dense({ units: originalDim, activation: 'tanh' }).apply(x4TS);
    const decoderOutputs = [decoderOutputsOn, decoderOutputsVel, decoderOutputsTS];

    // Decoder model
    const decoder = tf.model({ inputs: [decoderInputs, decoderCondKick, decoderCondHats, decoderCondOnOff], outputs: decoderOutputs, name: "decoder" })

    // build VAE model
    const vae = (inputs) => {
      return tf.tidy(() => {
        const [zMean, zLogVar, z] = this.encoder.apply([inputs[0], inputs[1], inputs[2], inputs[3], inputs[4], inputs[5]]);
        const outputs = this.decoder.apply([z, inputs[3], inputs[4], inputs[5]]);
        return [zMean, zLogVar, outputs];
      });
    }

    return [encoder, decoder, vae];
  }

  reconstructionLoss(yTrue, yPred) {
    return tf.tidy(() => {
      let reconstruction_loss;
      reconstruction_loss = tf.metrics.binaryCrossentropy(yTrue, yPred);
      reconstruction_loss = reconstruction_loss.mul(tf.scalar(yPred.shape[1]));
      return reconstruction_loss;
    });
  }

  mseLoss(yTrue, yPred) {
    return tf.tidy(() => {
      let mse_loss = tf.metrics.meanSquaredError(yTrue, yPred);
      mse_loss = mse_loss.mul(tf.scalar(yPred.shape[1]));
      return mse_loss;
    });
  }

  klLoss(z_mean, z_log_var) {
    return tf.tidy(() => {
      let kl_loss;
      kl_loss = tf.scalar(1).add(z_log_var).sub(z_mean.square()).sub(z_log_var.exp());
      kl_loss = tf.sum(kl_loss, -1);
      kl_loss = kl_loss.mul(tf.scalar(-0.5));
      return kl_loss;
    });
  }

  vaeLoss(yTrue, yPred) {
    return tf.tidy(() => {
      const [yTrueOn, yTrueVel, yTrueTS] = yTrue;
      const [z_mean, z_log_var, y] = yPred;
      const [yOn, yVel, yTS] = y;

      const onset_loss = this.reconstructionLoss(yTrueOn, yOn);
      let velocity_loss = this.mseLoss(yTrueVel, yVel);
      velocity_loss = velocity_loss.mul(VEL_LOSS_COEF);
      let timeshift_loss = this.mseLoss(yTrueTS, yTS);
      timeshift_loss = timeshift_loss.mul(TS_LOSS_COEF);

      const kl_loss = this.klLoss(z_mean, z_log_var);
      // console.log("onset_loss", tf.mean(onset_loss).dataSync());
      // console.log("velocity_loss",  tf.mean(velocity_loss).dataSync());
      // console.log("timeshift_loss",  tf.mean(timeshift_loss).dataSync());
      // console.log("kl_loss",  tf.mean(kl_loss).dataSync());
      const total_loss = tf.mean(onset_loss.add(velocity_loss).add(timeshift_loss).add(kl_loss)); // averaged in the batch
      return total_loss;
    });
  }

  async train(data, trainConfig) {
    this.isTrained = false;
    this.isTraining = true;
    this.shouldStopTraining = false;
    if (trainConfig != undefined) {
      this.trainConfig = trainConfig;
    }
    const config = this.trainConfig;

    const batchSize = config.batchSize;
    const numBatch = Math.floor(dataHandlerOnset.getDataSize() / batchSize);
    const epochs = numEpochs;
    const testBatchSize = config.testBatchSize;
    const optimizer = config.optimizer;
    const logMessage = console.log;

    const originalDim = this.modelConfig.originalDim;

    Max.outlet("training", 1);
    for (let i = 0; i < epochs; i++) {
      if (this.shouldStopTraining) break;

      let batchInputOn, batchInputVel, batchInputTS;
      let testBatchInputOn, testBatchInputVel, testBatchInputTS;
      let trainLoss; // for a training batch
      let epochLoss, valLoss;

      logMessage(`[Epoch ${i + 1}]\n`);
      Max.outlet("epoch", i + 1, epochs);
      epochLoss = 0;

      // Training 
      for (let j = 0; j < numBatch; j++) {
        let batchOnset = dataHandlerOnset.nextTrainBatch(batchSize);
        batchInputOn = batchOnset.xs.reshape([batchSize, originalDim]);
        let batchInputOnsetZ = tf.gather(dataOnsetZ, batchOnset.indices);
        let batchInputKickZ = tf.gather(batchInputOnsetZ, 0, axis = 1).expandDims(axis = 1);
        let batchInputHatsZ = tf.mean(tf.gather(batchInputOnsetZ, [2, 3], axis = 1), axis = 1).expandDims(axis = 1);
        let batchInputOnOffZ = tf.gather(dataOnOffRatioZ, batchOnset.indices).expandDims(axis = 1);

        batchInputVel = dataHandlerVelocity.nextTrainBatch(batchSize).xs.reshape([batchSize, originalDim]);
        batchInputTS = dataHandlerTimeshift.nextTrainBatch(batchSize).xs.reshape([batchSize, originalDim]);

        trainLoss = await optimizer.minimize(() => this.vaeLoss([batchInputOn, batchInputVel, batchInputTS],
          this.apply([batchInputOn, batchInputVel, batchInputTS, batchInputKickZ, batchInputHatsZ, batchInputOnOffZ])), true);

        trainLoss = Number(trainLoss.dataSync());
        epochLoss = epochLoss + trainLoss;

        await tf.nextFrame();
      }
      epochLoss = epochLoss / numBatch; // average
      logMessage(`\t[Average] Training Loss: ${epochLoss.toFixed(3)}. Epoch ${i} / ${epochs} \n`);
      Max.outlet("loss", epochLoss);

      // Validation 
      testBatchInputOn = dataHandlerOnset.nextTestBatch(testBatchSize);
      let batchInputOnsetZ = tf.gather(dataOnsetZ, testBatchInputOn.indices);
      let batchInputKickZ = tf.gather(batchInputOnsetZ, 0, axis = 1).expandDims(axis = 1);
      let batchInputHatsZ = tf.mean(tf.gather(batchInputOnsetZ, [2, 3], axis = 1), axis = 1).expandDims(axis = 1);
      let batchInputOnOffZ = tf.gather(dataOnOffRatioZ, testBatchInputOn.indices).expandDims(axis = 1);

      testBatchInputOn = testBatchInputOn.xs.reshape([testBatchSize, originalDim]);
      testBatchInputVel = dataHandlerVelocity.nextTestBatch(testBatchSize).xs.reshape([testBatchSize, originalDim]);
      testBatchInputTS = dataHandlerTimeshift.nextTestBatch(testBatchSize).xs.reshape([testBatchSize, originalDim]);
      valLoss = this.vaeLoss([testBatchInputOn, testBatchInputVel, testBatchInputTS],
        this.apply([testBatchInputOn, testBatchInputVel, testBatchInputTS, batchInputKickZ, batchInputHatsZ, batchInputOnOffZ]));
      valLoss = Number(valLoss.dataSync());

      logMessage(`\tVal Loss: ${valLoss.toFixed(3)}. Epoch ${i} / ${epochs}\n`);
      Max.outlet("val_loss", valLoss);

      await tf.nextFrame();
    }
    this.isTrained = true;
    this.isTraining = false;
    Max.outlet("training", 0);
    utils.log_status("Training finished!");
  }

  generate(zs, kick, hats, onoff) {
    let [outputsOn, outputsVel, outputsTS] = this.decoder.apply([zs, kick, hats, onoff]);

    outputsOn = outputsOn.reshape([NUM_DRUM_CLASSES, LOOP_DURATION]);
    outputsVel = outputsVel.reshape([NUM_DRUM_CLASSES, LOOP_DURATION]);
    outputsTS = outputsTS.reshape([NUM_DRUM_CLASSES, LOOP_DURATION]); // timshift output

    return [outputsOn.arraySync(), outputsVel.arraySync(), outputsTS.arraySync()];
  }

  bendModel(noise_range) {
    let weights = [];
    for (let i = 0; i < this.decoder.getWeights().length; i++) {
      let w = this.decoder.getWeights()[i];
      let shape = w.shape;
      console.log(shape);
      let noise = tf.randomNormal(w.shape, 0.0, noise_range);
      let neww = tf.add(w, noise);
      weights.push(neww);
    }
    this.decoder.setWeights(weights);
  }

  async saveModel(path) {
    if (!fs.existsSync(path)) fs.mkdir(path, { recursive: true }, (err) => {
      if (err) throw err;
    });
1
    let meanStdStr = JSON.stringify(dataMeanStd);
    fs.writeFile(path + '/model_rvae.json', meanStdStr, function (err) {
      if (err) return console.log(err);
    });

    path = "file://" + path; // for tfjs 
    const saved0 = await this.decoder.save(path + "/decoder");
    const saved1 = await this.encoder.save(path + "/encoder");
    console.log(saved0, saved1);
  }

  async loadModel(path) {
    dataMeanStd = JSON.parse(fs.readFileSync(path));
    console.log(dataMeanStd);
    
    let filepath = "file://" + path;
    let dirpath = pathlib.dirname(filepath);

    let decoder_path = dirpath + "/decoder/model.json"
    this.decoder = await tf.loadLayersModel(decoder_path);
    let encoder_path = dirpath + "/encoder/model.json"
    this.encoder = await tf.loadLayersModel(encoder_path);

    this.isTrained = true;
  }

  encode(inputOn, inputVel, inputTS) {
    if (!this.encoder) {
      utils.error_status("Model is not trained yet");
      return;
    }

    // reshaping...
    inputOn = inputOn.reshape([1, ORIGINAL_DIM]);
    inputVel = inputVel.reshape([1, ORIGINAL_DIM]);
    inputTS = inputTS.reshape([1, ORIGINAL_DIM]);

    let [zMean, zLogVar, zs] = this.encoder.apply([inputOn, inputVel, inputTS]);

    // this.generate(zs); // generate rhythm pattern with the encoded z
    zs = zs.arraySync();
    return zs[0];
  }

}

function range(start, edge, step) {
  // If only one number was passed in make it the edge and 0 the start.
  if (arguments.length == 1) {
    edge = start;
    start = 0;
  }

  // Validate the edge and step numbers.
  edge = edge || 0;
  step = step || 1;

  // Create the array of numbers, stopping befor the edge.
  for (var ret = []; (edge - start) * step > 0; start += step) {
    ret.push(start);
  }
  return ret;
}


function exportAll(path) {
  const zRange = 2.0;
  const zResolution = 0.5;
  const condRange = 3.0;
  const condResolution = 0.5;
  const threshold = 0.5;

  let results = [];

  // Conditioning
  for (let kick = -condRange; kick <= condRange; kick += condResolution) {
    for (let hats = -condRange; hats <= condRange; hats += condResolution) {
      for (let onoff = -condRange; onoff <= condRange; onoff += condResolution) {
        // Latent Vector
        for (let z1 = -zRange; z1 <= zRange; z1 += zResolution) {
          for (let z2 = -zRange; z2 <= zRange; z2 += zResolution) {

            // generate!
            let [onsets, velocities, timeshifts] = generatePattern(z1, z2, kick, hats, onoff);

            let _onsets = [];
            for (var i = 0; i < NUM_DRUM_CLASSES; i++) {
              for (var j = 0; j < LOOP_DURATION; j++) {
                if (onsets[i][j] > threshold) {
                  let vel = Math.floor(velocities[i][j] * 127. + 1);
                  _onsets.push([i, j, vel]);
                } 
              }
            }

            let dict = {};
            dict["z1"] = z1;
            dict["z2"] = z2;
            dict["kick"] = kick;
            dict["hats"] = hats;
            dict["onoff"] = onoff;
            dict["onsets"] = _onsets;
            results.push(dict);
          }
        }
      }
    }
  }
  fs.writeFileSync(path, JSON.stringify(results));
}

exports.loadAndTrain = loadAndTrain;
exports.getConditionings = getConditionings;
exports.saveModel = saveModel;
exports.loadModel = loadModel;
exports.clearModel = clearModel;
exports.generatePattern = generatePattern;
exports.encodePattern = encodePattern;
exports.stopTraining = stopTraining;
exports.isReadyToGenerate = isReadyToGenerate;
exports.isTraining = isTraining;
exports.setEpochs = setEpochs;
exports.bendModel = bendModel;
exports.exportAll = exportAll;

