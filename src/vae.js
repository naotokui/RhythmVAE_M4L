// VAE in tensorflow.js
// based on https://github.com/songer1993/tfjs-vae

const Max = require('max-api');
const tf = require('@tensorflow/tfjs-node');

const utils = require('./utils.js')
const data = require('./data.js')

// Constants
const NUM_MIDI_CLASSES = require('./constants.js').NUM_MIDI_CLASSES;
const LOOP_DURATION = require('./constants.js').LOOP_DURATION;

const ORIGINAL_DIM = require('./constants.js').ORIGINAL_DIM;
const INTERMEDIATE_DIM = 512;
const LATENT_DIM = 2;

const BATCH_SIZE = 128;
const NUM_BATCH = 50;
const TEST_BATCH_SIZE = 1000;
const ON_LOSS_COEF = 0.75;  // coef for onsets loss
const DUR_LOSS_COEF = 1.0;  // coef for duration loss
const VEL_LOSS_COEF = 2.5;  // coef for velocity loss

let dataHandlerOnset;
let dataHandlerVelocity;
let dataHandlerDuration;
let model;
let numEpochs = 100;

async function loadAndTrain(train_data_onset, train_data_velocity, train_data_duration) {
  dataHandlerOnset = new data.DataHandler(train_data_onset); // data utility fo onset
  dataHandlerVelocity = new data.DataHandler(train_data_velocity); // data utility for velocity
  dataHandlerDuration = new data.DataHandler(train_data_duration); // data utility for duration
  initModel(); // initializing model class
  startTraining(); // start the actual training process with the given training data
}

function initModel(){
  model = new ConditionalVAE({
    modelConfig:{
      originalDim: ORIGINAL_DIM,
      intermediateDim: INTERMEDIATE_DIM,
      latentDim: LATENT_DIM
    },
    trainConfig:{
      batchSize: 16,
      testBatchSize: TEST_BATCH_SIZE,
      // epochs: 50,
      optimizer: tf.train.adam(),
    //   logMessage: ui.logMessage,
    //   plotTrainLoss: ui.plotTrainLoss,
    //   plotValLoss: ui.plotValLoss,
    //   updateProgressBar: ui.updateProgressBar
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

    // Onset Input
    const encoderInputsOn = tf.input({shape: [originalDim]});
    const x1LinearOn = tf.layers.dense({units: intermediateDim, useBias: true, kernelInitializer: 'glorotNormal'}).apply(encoderInputsOn);
    const x1NormalisedOn = tf.layers.batchNormalization({axis: 1}).apply(x1LinearOn);
    const x1On = tf.layers.leakyReLU().apply(x1NormalisedOn);

    // Velocity input
    const encoderInputsVel = tf.input({shape: [originalDim]});
    const x1LinearVel = tf.layers.dense({units: intermediateDim, useBias: true, kernelInitializer: 'glorotNormal'}).apply(encoderInputsVel);
    const x1NormalisedVel = tf.layers.batchNormalization({axis: 1}).apply(x1LinearVel);
    const x1Vel = tf.layers.leakyReLU().apply(x1NormalisedVel);
    
    // Duration input
    const encoderInputsDur = tf.input({shape: [originalDim]});
    const x1LinearDur = tf.layers.dense({units: intermediateDim, useBias: true, kernelInitializer: 'glorotNormal'}).apply(encoderInputsDur);
    const x1NormalisedDur = tf.layers.batchNormalization({axis: 1}).apply(x1LinearDur);
    const x1Dur = tf.layers.leakyReLU().apply(x1NormalisedDur);

    // Merged
    const concatLayer = tf.layers.concatenate();
    const x1Merged = concatLayer.apply([x1On, x1Vel, x1Dur]);
    const x2Linear = tf.layers.dense({units: intermediateDim, useBias: true, kernelInitializer: 'glorotNormal'}).apply(x1Merged);
    const x2Normalised = tf.layers.batchNormalization({axis: 1}).apply(x2Linear);
    const x2 = tf.layers.leakyReLU().apply(x2Normalised);
      
    const zMean = tf.layers.dense({units: latentDim, useBias: true, kernelInitializer: 'glorotNormal'}).apply(x2);
    const zLogVar = tf.layers.dense({units: latentDim, useBias: true, kernelInitializer: 'glorotNormal'}).apply(x2);
    const z = new sampleLayer().apply([zMean, zLogVar]);
    const encoderInputs = [encoderInputsOn, encoderInputsVel, encoderInputsDur];
    const encoderOutputs = [zMean, zLogVar, z];

    const encoder = tf.model({inputs: encoderInputs, outputs: encoderOutputs, name: "encoder"})

    // build decoder model
    const decoderInputs = tf.input({shape: [latentDim]});
    const x3Linear = tf.layers.dense({units: intermediateDim, useBias: true, kernelInitializer: 'glorotNormal'}).apply(decoderInputs);
    const x3Normalised = tf.layers.batchNormalization({axis: 1}).apply(x3Linear);
    const x3 = tf.layers.leakyReLU().apply(x3Normalised);

    // Decoder for onsets
    const x4LinearOn = tf.layers.dense({units: intermediateDim, useBias: true, kernelInitializer: 'glorotNormal'}).apply(x3);
    const x4NormalisedOn = tf.layers.batchNormalization({axis: 1}).apply(x4LinearOn);
    const x4On = tf.layers.leakyReLU().apply(x4NormalisedOn);
    const decoderOutputsOn = tf.layers.dense({units: originalDim, activation: 'sigmoid'}).apply(x4On);

    // Decoder for velocity
    const x4LinearVel = tf.layers.dense({units: intermediateDim, useBias: true, kernelInitializer: 'glorotNormal'}).apply(x3);
    const x4NormalisedVel = tf.layers.batchNormalization({axis: 1}).apply(x4LinearVel);
    const x4Vel = tf.layers.leakyReLU().apply(x4NormalisedVel);
    const decoderOutputsVel = tf.layers.dense({units: originalDim, activation: 'sigmoid'}).apply(x4Vel);
    
    // Decoder for duration
    const x4LinearDur = tf.layers.dense({units: intermediateDim, useBias: true, kernelInitializer: 'glorotNormal'}).apply(x3);
    const x4NormalisedDur = tf.layers.batchNormalization({axis: 1}).apply(x4LinearDur);
    const x4Dur = tf.layers.leakyReLU().apply(x4NormalisedDur);
    const decoderOutputsDur = tf.layers.dense({units: originalDim, activation: 'relu'}).apply(x4Dur);
    const decoderOutputs = [decoderOutputsOn, decoderOutputsVel, decoderOutputsDur];

    // Decoder model
    const decoder = tf.model({inputs: decoderInputs, outputs: decoderOutputs, name: "decoder"})

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
      reconstruction_loss = tf.metrics.binaryCrossentropy(yTrue, yPred)
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
      const [yTrueOn, yTrueVel, yTrueDur] = yTrue;
      const [z_mean, z_log_var, y] = yPred;
      const [yOn, yVel, yDur] = y;

      let onset_loss = this.reconstructionLoss(yTrueOn, yOn);
      onset_loss = onset_loss.mul(ON_LOSS_COEF);
      let velocity_loss = this.mseLoss(yTrueVel, yVel);
      velocity_loss = velocity_loss.mul(VEL_LOSS_COEF);
      let duration_loss = this.mseLoss(yTrueDur, yDur);
      duration_loss = duration_loss.mul(DUR_LOSS_COEF);

      const kl_loss = this.klLoss(z_mean, z_log_var);
      // console.log("onset_loss", tf.mean(onset_loss).dataSync());
      // console.log("velocity_loss", tf.mean(velocity_loss).dataSync());
      // console.log("duration_loss",  tf.mean(duration_loss).dataSync());
      // console.log("kl_loss",  tf.mean(kl_loss).dataSync());
      const total_loss = tf.mean(onset_loss.add(velocity_loss).add(duration_loss).add(kl_loss)); // averaged in the batch
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
    const epochs = numEpochs;
    const testBatchSize = config.testBatchSize;
    const optimizer = config.optimizer;
    const logMessage = console.log;
    const plotTrainLoss = console.log;
    const plotValLoss = console.log;
  //   const updateProgressBar = config.updateProgressBar;

    const originalDim = this.modelConfig.originalDim;

    Max.outlet("training", 1);
    for (let i = 0; i < epochs; i++) {
      if (this.shouldStopTraining) break;

      let batchInputOn, batchInputVel, batchInputDur;
      let trainLoss;
      let epochLoss;

      logMessage(`[Epoch ${i + 1}]\n`);
      Max.outlet("epoch", i + 1, epochs);
      utils.log_status(`Epoch: ${i + 1}`);

      epochLoss = 0;
      for (let j = 0; j < numBatch; j++) {
        batchInputOn = dataHandlerOnset.nextTrainBatch(batchSize).xs.reshape([batchSize, originalDim]);
        batchInputVel = dataHandlerVelocity.nextTrainBatch(batchSize).xs.reshape([batchSize, originalDim]);
        batchInputDur = dataHandlerDuration.nextTrainBatch(batchSize).xs.reshape([batchSize, originalDim]);
        trainLoss = await optimizer.minimize(() => this.vaeLoss([batchInputOn, batchInputVel, batchInputDur], 
            this.apply([batchInputOn, batchInputVel, batchInputDur])), true);
        trainLoss = Number(trainLoss.dataSync());
        epochLoss = epochLoss + trainLoss;
        // logMessage(`\t[Batch ${j + 1}] Training Loss: ${trainLoss}.\n`);
        //plotTrainLoss(trainLoss);

        await tf.nextFrame();
      }
      epochLoss = epochLoss / numBatch;
      logMessage(`\t[Average] Training Loss: ${epochLoss}.\n`);
      logMessage(i, epochs);

      Max.outlet("loss", epochLoss);
      // testBatchInput = data.nextTrainBatch(testBatchSize).xs.reshape([testBatchSize, originalDim]);
      // testBatchResult = this.apply(testBatchInput);
      // valLoss = this.vaeLoss(testBatchInput, testBatchResult);
      // valLoss = Number(valLoss.dataSync());
      // plotValLoss(valLoss);
      await tf.nextFrame();
    }
    this.isTrained = true;
    this.isTraining = false;
    Max.outlet("training", 0);
    utils.log_status("Training finished!");
  }
  
  generate(zs){
    let [outputsOn, outputsVel, outputsDur] = this.decoder.apply(zs);

    outputsOn = outputsOn.reshape([NUM_MIDI_CLASSES, LOOP_DURATION]);     
    outputsVel = outputsVel.reshape([NUM_MIDI_CLASSES, LOOP_DURATION]);    
    outputsDur = outputsDur.reshape([NUM_MIDI_CLASSES, LOOP_DURATION]);    

    return [outputsOn.arraySync(), outputsVel.arraySync(), outputsDur.arraySync()];
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

