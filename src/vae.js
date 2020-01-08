// VAE in tensorflow.js
// based on https://github.com/songer1993/tfjs-vae

const Max = require('max-api');
const tf = require('@tensorflow/tfjs-node');

const utils = require('./utils.js')
const data = require('./data.js')

// Constants
const NUM_DRUM_CLASSES = require('./constants.js').NUM_DRUM_CLASSES;
const LOOP_DURATION = require('./constants.js').LOOP_DURATION;

const ORIGINAL_DIM = require('./constants.js').ORIGINAL_DIM;
const INTERMEDIATE_DIM = 512;
const ENCODER_LSTM_DIM = 256;
const DECODER_LSTM_DIM = 256;
const LATENT_DIM = 2;

const BATCH_SIZE = 64;
const TEST_BATCH_SIZE = 128;
const TS_LOSS_COEF = 5.0;  // coef for timeshift loss
const VEL_LOSS_COEF = 2.5;  // coef for velocity loss


let dataHandlerOnset; 
let dataHandlerVelocity;
let dataHandlerTimeshift;
let model;
let numEpochs = 150; // default # of epochs

async function loadAndTrain(train_data_onset, train_data_velocity, train_data_timeshift) {
  console.assert(train_data_onset.length == train_data_velocity.length && train_data_velocity.length == train_data_timeshift.length);
  
  // shuffle in sync
  const total_num = train_data_onset.length;
  shuffled_indices = tf.util.createShuffledIndices(total_num);
  train_data_onset = utils.shuffle_with_indices(train_data_onset,shuffled_indices);
  train_data_velocity = utils.shuffle_with_indices(train_data_velocity,shuffled_indices);
  train_data_timeshift = utils.shuffle_with_indices(train_data_timeshift,shuffled_indices);

  // synced indices
  const num_trains = Math.floor(data.TRAIN_TEST_RATIO * total_num);
  const num_tests  = total_num - num_trains;
  const train_indices = tf.util.createShuffledIndices(num_trains);
  const test_indices = tf.util.createShuffledIndices(num_tests);

  // create data handlers
  dataHandlerOnset = new data.DataHandler(train_data_onset, train_indices, test_indices); // data utility fo onset
  dataHandlerVelocity = new data.DataHandler(train_data_velocity, train_indices, test_indices); // data utility for velocity
  dataHandlerTimeshift = new data.DataHandler(train_data_timeshift, train_indices, test_indices); // data utility for duration

  // start training!
  initModel(); // initializing model class
  startTraining(); // start the actual training process with the given training data
}

function initModel(){
  model = new ConditionalVAE({
    modelConfig:{
      inputDim: [LOOP_DURATION, NUM_DRUM_CLASSES],
      intermediateDim: INTERMEDIATE_DIM,
      latentDim: LATENT_DIM
    },
    trainConfig:{
      batchSize: BATCH_SIZE,
      testBatchSize: TEST_BATCH_SIZE,
      epochs: numEpochs,
      optimizer: tf.train.adam()
    }
  });
}

async function startTraining(){
  await model.train();
}

function stopTraining(){
  model.shouldStopTraining = true;
  utils.log_status("Stopping training...");
}

function isTraining(){
  if (model && model.isTraining) return true;
}

function isReadyToGenerate(){
  return (model && model.isTrained);
}

function setEpochs(e){
  numEpochs = e;
  Max.outlet("epoch", 0, numEpochs);
}

function generatePattern(z1, z2){
  var zs;
  if (z1 === 'undefined' || z2 === 'undefined'){
    zs = tf.randomNormal([1, 2]);
  } else {
    zs = tf.tensor2d([[z1, z2]]);
  }
  return model.generate(zs);
}

async function saveModel(filepath){
  model.saveModel(filepath);
}

async function loadModel(filepath){
  if (!model) initModel();
  model.loadModel(filepath);
}

// Sampling Z 
class sampleLayer extends tf.layers.Layer {
  constructor(args) {
    super({});
  }

  computeOutputShape(inputShape) {
    return inputShape[0];
  }

  call(inputs, kwargs) {
    return tf.tidy(() => {
      const [zMean, zLogVar] = inputs;
      const batch = zMean.shape[0];
      const dim = zMean.shape[1];
      const epsilon = tf.randomNormal([batch, dim]);
      const half = tf.scalar(0.5);
      const temp = zLogVar.mul(half).exp().mul(epsilon);
      const sample = zMean.add(temp);
      return sample;
    });
  }

  getClassName() {
    return 'sampleLayer';
  }
}

  
class ConditionalVAE {
  constructor(config) {
    this.modelConfig = config.modelConfig;
    this.trainConfig = config.trainConfig;
    [this.encoder, this.decoder, this.apply] = this.build();
    this.isTrained = false;
  }

  build(modelConfig) {
    if (modelConfig != undefined){
      this.modelConfig = modelConfig;
    }
    const config = this.modelConfig;

    const originalDim = config.originalDim;
    const intermediateDim = config.intermediateDim;
    const latentDim = config.latentDim;

    // VAE model = encoder + decoder
    // build encoder model

    // Onset input
    const encoderInputsOn = tf.input({shape: [LOOP_DURATION, NUM_DRUM_CLASSES]});
    
    // Velocity input
    const encoderInputsVel = tf.input({shape: [LOOP_DURATION, NUM_DRUM_CLASSES]});

    // Timeshift input
    const encoderInputsTS= tf.input({shape: [LOOP_DURATION, NUM_DRUM_CLASSES]});
    
    // Merged
    const concatLayer = tf.layers.concatenate();
    const x1 = concatLayer.apply([encoderInputsOn, encoderInputsVel, encoderInputsTS]); // (None, 32, 27) 

    // Bidirectional LSTM
    const x2 = tf.layers.bidirectional({layer: tf.layers.lstm({units: ENCODER_LSTM_DIM}), mergeMode: 'concat'}).apply(x1)

    // VAE Z
    const zMean = tf.layers.dense({units: latentDim, useBias: true, kernelInitializer: 'glorotNormal'}).apply(x2);
    const zLogVar = tf.layers.dense({units: latentDim, useBias: true, kernelInitializer: 'glorotNormal'}).apply(x2);
    const z = new sampleLayer().apply([zMean, zLogVar]);

    const encoderInputs = [encoderInputsOn, encoderInputsVel, encoderInputsTS];
    const encoderOutputs = [zMean, zLogVar, z];

    const encoder = tf.model({inputs: encoderInputs, outputs: encoderOutputs, name: "encoder"})
    encoder.summary();

    // build decoder model
    const decoderInputs = tf.input({shape: [latentDim]});

    const x3 = tf.layers.dense({units: LOOP_DURATION, useBias: true, kernelInitializer: 'glorotNormal'}).apply(decoderInputs);
    const x4 = tf.layers.reshape({targetShape: [LOOP_DURATION, 1]}).apply(x3)
    const x5 = tf.layers.lstm({units: ENCODER_LSTM_DIM, returnSequences: 'true'}).apply(x4)     

    const decoderOutputsOn = tf.layers.lstm({units: NUM_DRUM_CLASSES, returnSequences: 'true', activation: 'softmax'}).apply(x5) // axis (number) Integer, axis along which the softmax normalization is applied. Defaults to -1 (i.e., the last axis).
    const decoderOutputsVel = tf.layers.lstm({units: NUM_DRUM_CLASSES, returnSequences: 'true', activation: 'sigmoid'}).apply(x5) 
    const decoderOutputsTS = tf.layers.lstm({units: NUM_DRUM_CLASSES, returnSequences: 'true', activation: 'tanh'}).apply(x5) 

    console.log(decoderOutputsTS.shape)
    const decoderOutputs = [decoderOutputsOn, decoderOutputsVel, decoderOutputsTS];

    console.log(decoderOutputs.shape)

    // Decoder model
    const decoder = tf.model({inputs: decoderInputs, outputs: decoderOutputs, name: "decoder"})
    decoder.summary();

    // build VAE model
    const vae = (inputs) => {
      return tf.tidy(() => {
        const [zMean, zLogVar, z] = this.encoder.apply(inputs);
        const outputs = this.decoder.apply(z);
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

      console.log("yOn", yOn.shape);

      const onset_loss = this.reconstructionLoss(yTrueOn, yOn);
      console.log("onset_loss", onset_loss.shape);
      let velocity_loss = this.mseLoss(yTrueVel, yVel);
      console.log("velocity_loss", velocity_loss.shape);
      velocity_loss = velocity_loss.mul(VEL_LOSS_COEF);
      let timeshift_loss = this.mseLoss(yTrueTS, yTS);
      console.log("timeshift_loss", timeshift_loss.shape);
      timeshift_loss = timeshift_loss.mul(TS_LOSS_COEF);

      const kl_loss = this.klLoss(z_mean, z_log_var);
      console.log("kl_loss", kl_loss.shape);
      
      console.log("onset_loss", tf.mean(onset_loss).dataSync());
      console.log("velocity_loss",  tf.mean(velocity_loss).dataSync());
      console.log("timeshift_loss",  tf.mean(timeshift_loss).dataSync());
      console.log("kl_loss",  tf.mean(kl_loss).dataSync());
      const total_loss = tf.mean(onset_loss.add(velocity_loss).add(timeshift_loss).add(kl_loss)); // averaged in the batch
      return total_loss;
    });
  }

  async train(data, trainConfig) {
    this.isTrained = false;
    this.isTraining = true;
    this.shouldStopTraining = false;
    if (trainConfig != undefined){
      this.trainConfig = trainConfig;
    }
    const config = this.trainConfig;

    const batchSize = config.batchSize;
    const numBatch = Math.floor(dataHandlerOnset.getDataSize() / batchSize);
    const epochs = config.epochs;
    const testBatchSize = config.testBatchSize;
    const optimizer = config.optimizer;
    const logMessage = console.log;

    const inputDim = this.modelConfig.inputDim;

    Max.outlet("training", 1);
    for (let i = 0; i < epochs; i++) {
      if (this.shouldStopTraining) break;

      let batchInputOn,batchInputVel,batchInputTS;
      let testBatchInputOn,testBatchInputVel,testBatchInputTS;
      let trainLoss; // for a training batch
      let epochLoss, valLoss;

      logMessage(`[Epoch ${i + 1}]\n`);
      Max.outlet("epoch", i + 1, epochs);
      epochLoss = 0;

      // Training 
      for (let j = 0; j < numBatch; j++) {
        batchInputOn = dataHandlerOnset.nextTrainBatch(batchSize).xs.reshape([batchSize, inputDim[0], inputDim[1]]);
        batchInputVel = dataHandlerVelocity.nextTrainBatch(batchSize).xs.reshape([batchSize, inputDim[0], inputDim[1]]);
        batchInputTS = dataHandlerTimeshift.nextTrainBatch(batchSize).xs.reshape([batchSize, inputDim[0], inputDim[1]]);
        console.log("here");

        trainLoss = await optimizer.minimize(() => this.vaeLoss([batchInputOn, batchInputVel, batchInputTS],
           this.apply([batchInputOn, batchInputVel, batchInputTS])), true);

        trainLoss = Number(trainLoss.dataSync());
        epochLoss = epochLoss + trainLoss;

        await tf.nextFrame();
      }
      epochLoss = epochLoss / numBatch; // average
      logMessage(`\t[Average] Training Loss: ${epochLoss.toFixed(3)}. Epoch ${i} / ${epochs} \n`);
      Max.outlet("loss", epochLoss);

      // Validation 
      testBatchInputOn = dataHandlerOnset.nextTestBatch(testBatchSize).xs.reshape([testBatchSize, inputDim[0], inputDim[1]]);
      testBatchInputVel = dataHandlerVelocity.nextTestBatch(testBatchSize).xs.reshape([testBatchSize, inputDim[0], inputDim[1]]);
      testBatchInputTS = dataHandlerTimeshift.nextTestBatch(testBatchSize).xs.reshape([testBatchSize, inputDim[0], inputDim[1]]);
      valLoss = this.vaeLoss([testBatchInputOn, testBatchInputVel, testBatchInputTS], 
                                this.apply([testBatchInputOn, testBatchInputVel, testBatchInputTS]));
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
  
  generate(zs){
    let [outputsOn, outputsVel, outputsTS] = this.decoder.apply(zs);

    outputsOn = outputsOn.reshape([NUM_DRUM_CLASSES, LOOP_DURATION]);   
    outputsVel = outputsVel.reshape([NUM_DRUM_CLASSES, LOOP_DURATION]);    
    outputsTS = outputsTS.reshape([NUM_DRUM_CLASSES, LOOP_DURATION]); // timshift output

    return [outputsOn.arraySync(), outputsVel.arraySync(), outputsTS.arraySync()];
  }

  async saveModel(path){
    const saved = await this.decoder.save(path);
    utils.post(saved);
  }

  async loadModel(path){
    this.decoder = await tf.loadLayersModel(path);
    this.isTrained = true;
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

exports.loadAndTrain = loadAndTrain;
exports.saveModel = saveModel;
exports.loadModel = loadModel;
exports.generatePattern = generatePattern;
exports.stopTraining = stopTraining;
exports.isReadyToGenerate = isReadyToGenerate;
exports.isTraining = isTraining;
exports.setEpochs = setEpochs;

