const Max = require('max-api');
const tf = require('@tensorflow/tfjs-node');


const NUM_DRUM_CLASSES = require('./constants.js').NUM_DRUM_CLASSES;
const LOOP_DURATION = require('./constants.js').LOOP_DURATION;

const ORIGINAL_DIM = NUM_DRUM_CLASSES * LOOP_DURATION;
const INTERMEDIATE_DIM = 512;
const LATENT_DIM = 2;

const BATCH_SIZE = 128;
const NUM_BATCH = 50;
const TEST_BATCH_SIZE = 1000;

let data;
let model;

async function loadAndTrain(train_data) {
//   data = new MnistData();
//   await data.load();

  model = new ConditionalVAE({
    modelConfig:{
      originalDim: ORIGINAL_DIM,
      intermediateDim: INTERMEDIATE_DIM,
      latentDim: LATENT_DIM
    },
    trainConfig:{
      batchSize: 1,
      numBatch: train_data.length,
      testBatchSize: TEST_BATCH_SIZE,
      epochs: 35,
      optimizer: tf.train.adam(),
    //   logMessage: ui.logMessage,
    //   plotTrainLoss: ui.plotTrainLoss,
    //   plotValLoss: ui.plotValLoss,
    //   updateProgressBar: ui.updateProgressBar
    }
  });
  await model.train(train_data);
}


// function generatePattern(){
//   console.log("generatePattern");
//   // const testSampleSize = ui.getTestSampleSize();
//   const zs = tf.randomNormal([1, 2]);
//   let outputs = model.decoder.apply(zs);
//   outputs = outputs.reshape([NUM_DRUM_CLASSES, LOOP_DURATION]);
//   // console.log(outputs.toString());

//   return outputs.dataSync();
// }

function generatePattern(z1, z2){
  // const testSampleSize = ui.getTestSampleSize();
  var zs;
  if (z1 === 'undefined' || z2 === 'undefined'){
    zs = tf.randomNormal([1, 2]);
  } else {
    zs = tf.tensor2d([[z1, z2]]);
  }
  console.log(zs.toString());
  let outputs = model.decoder.apply(zs);
  outputs = outputs.reshape([NUM_DRUM_CLASSES, LOOP_DURATION]);
  // console.log(outputs.toString());

  return outputs.dataSync();
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
      const encoderInputs = tf.input({shape: [originalDim]});
      const x1Linear = tf.layers.dense({units: intermediateDim, useBias: true, kernelInitializer: 'glorotNormal'}).apply(encoderInputs);
      const x1Normalised = tf.layers.batchNormalization({axis: 1}).apply(x1Linear);
      const x1 = tf.layers.leakyReLU().apply(x1Normalised);
      const zMean = tf.layers.dense({units: latentDim, useBias: true, kernelInitializer: 'glorotNormal'}).apply(x1);
      const zLogVar = tf.layers.dense({units: latentDim, useBias: true, kernelInitializer: 'glorotNormal'}).apply(x1);
      const z = new sampleLayer().apply([zMean, zLogVar]);
      const encoderOutputs = [zMean, zLogVar, z];
      const encoder = tf.model({inputs: encoderInputs, outputs: encoderOutputs, name: "encoder"})
  
      // build decoder model
      const decoderInputs = tf.input({shape: [latentDim]});
      const x2Linear = tf.layers.dense({units: intermediateDim, useBias: true, kernelInitializer: 'glorotNormal'}).apply(decoderInputs);
      const x2Normalised = tf.layers.batchNormalization({axis: 1}).apply(x2Linear);
      const x2 = tf.layers.leakyReLU().apply(x2Normalised);
      const decoderOutputs = tf.layers.dense({units: originalDim, activation: 'sigmoid'}).apply(x2);
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
        const [z_mean, z_log_var, y] = yPred;
        const reconstruction_loss = this.reconstructionLoss(yTrue, y);
        const kl_loss = this.klLoss(z_mean, z_log_var);
        const total_loss = tf.mean(reconstruction_loss.add(kl_loss));
        return total_loss;
      });
    }
  
    async train(data, trainConfig) {
      this.isTrained = false;
      if (trainConfig != undefined){
        this.trainConfig = trainConfig;
      }
      const config = this.trainConfig;
  
      const batchSize = config.batchSize;
      const numBatch = config.numBatch;
      const epochs = config.epochs;
      const testBatchSize = config.testBatchSize;
      const optimizer = config.optimizer;
      const logMessage = console.log;
      const plotTrainLoss = console.log;
      const plotValLoss = console.log;
    //   const updateProgressBar = config.updateProgressBar;
  
      const originalDim = this.modelConfig.originalDim;
  
      for (let i = 0; i < epochs; i++) {
        let batchInput;
        let testBatchInput;
        let trainLoss;
        let valLoss;
        let testBatchResult;
        let epochLoss;
  
        logMessage(`[Epoch ${i + 1}]\n`);
        Max.outlet("epoch", i + 1);
        epochLoss = 0;
        for (let j = 0; j < numBatch; j++) {
          batchInput =  data[j].reshape([batchSize, originalDim]); // data.nextTrainBatch(batchSize).xs.reshape([batchSize, originalDim]);
          trainLoss = await optimizer.minimize(() => this.vaeLoss(batchInput, this.apply(batchInput)), true);
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
  exports.generatePattern = generatePattern;