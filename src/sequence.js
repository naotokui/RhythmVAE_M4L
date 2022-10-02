// VAE in tensorflow.js
// based on https://github.com/songer1993/tfjs-vae

const Max = require('max-api');
const tf = require('@tensorflow/tfjs-node');

const utils = require('./utils.js')
const data = require('./data.js')

// Constants
const LATENT_DIM = 2;
const SEQ_LSTM_UNIT = 16;

let dataHandlerZ;
let modelSeq = null;

async function loadAndTrainModel(train_seq_inputs_zs, train_seq_output_zs, numEpoch) {
  console.assert(train_seq_inputs_zs.length == train_seq_output_zs.length);
  
  // shuffle in sync
  const total_num = train_seq_inputs_zs.length;
  shuffled_indices = tf.util.createShuffledIndices(total_num);
  var train_seq_inputs_zs_shuffled = utils.shuffle_with_indices(train_seq_inputs_zs, shuffled_indices);
  var train_seq_output_zs_shuffled = utils.shuffle_with_indices(train_seq_output_zs, shuffled_indices);

  // synced indices
  const num_trains = Math.floor(data.TRAIN_TEST_RATIO * total_num);
  const num_tests  = total_num - num_trains;
  const train_indices = tf.util.createShuffledIndices(num_trains);
  const test_indices = tf.util.createShuffledIndices(num_tests);

  // create data handlers
  dataHandlerZ = new data.DataHandler(train_seq_inputs_zs_shuffled, train_indices, test_indices); 
  dataHandlerZOutput = new data.DataHandler(train_seq_output_zs_shuffled, train_indices, test_indices);

  // start training!
  if (!modelSeq) initModel(); // initializing model class
  startTraining(numEpoch); // start the actual training process with the given training data
}

function initModel(){
  modelSeq = new SequenceLSTM({    
    modelConfig:{},
    trainConfig:{
      batchSize: 1,
      testBatchSize: 1,
      optimizer: tf.train.adam()
  }});
}

async function startTraining(numEpoch){
  await modelSeq.train(numEpoch);
}

function stopTraining(){
    modelSeq.shouldStopTraining = true;
  utils.log_status("Stopping training...");
}

function isTraining(){
  if (modelSeq && modelSeq.isTraining) return true;
}

function isReadyToGenerate(){
  return (modelSeq && modelSeq.isTrained);
}

function setEpochs(e){
  numEpochs = e;
  Max.outlet("epoch", 0, numEpochs);
}

function generate(z1, z2){
    if (!modelSeq) return;
    modelSeq.generate(z1, z2);
}

function addHistory(z1, z2){
    if (!modelSeq) return;
    modelSeq.addHistory(z1, z2);
}

async function saveModel(filepath){
  modelSeq.saveModel(filepath);
}

async function loadModel(filepath){
  if (!modelSeq) initModel();
  modelSeq.loadModel(filepath);
}

function clearModel(){
  model = null;
}
class SequenceLSTM {
  constructor(config) {
    this.modelConfig = config.modelConfig;
    this.trainConfig = config.trainConfig;
    this.isTrained = false;
    this.model = this.build(this.modelConfig);
  }

  build(modelConfig) {
    if (modelConfig != undefined){
      this.modelConfig = modelConfig;
    }
    const config = this.modelConfig;

    utils.log_status("Building sequence model...");

    // Layers
    const zInput = tf.input({batchShape: [1, 1, LATENT_DIM]});
    this.lstmLayer = tf.layers.lstm({units: SEQ_LSTM_UNIT, stateful: true, batchInputShape: [1, 1, LATENT_DIM]});
    const x1 = this.lstmLayer.apply(zInput)
    const x2 = tf.layers.dense({units: LATENT_DIM, activation: 'linear'}).apply(x1);

    // Sequence model
    const model = tf.model({inputs: zInput, outputs: x2, name: "sequence"})
    model.summary();

    utils.log_status("Sequence Model built!");

    return model;
  }

  mseLoss(yTrue, yPred) {
    return tf.tidy(() => {
      let mse_loss = tf.metrics.meanSquaredError(yTrue, yPred);
      mse_loss = tf.sum(mse_loss);
      return mse_loss;
    });
  }

  async train(data, numEpoch) {
    this.isTrained = false;
    this.isTraining = true;
    this.shouldStopTraining = false;
    const config = this.trainConfig;

    const batchSize = config.batchSize;
    const numBatch = Math.floor(dataHandlerZ.getDataSize() / batchSize);
    const epochs = numEpoch;
    const testBatchSize = config.testBatchSize;
    const optimizer = config.optimizer;
    const logMessage = console.log;

    Max.outlet("training", 1);
    for (let i = 0; i < epochs; i++) {
      if (this.shouldStopTraining) break;

      let batchInputZ,batchOutputZ;
      let testBatchInputZ,testBatchOutputZ;
      let trainLoss, epochLoss, valLoss;

      logMessage(`[Epoch ${i + 1}]\n`);
      Max.outlet("epoch", i + 1, epochs);
      epochLoss = 0;

      // Training 
      for (let j = 0; j < numBatch; j++) {
        batchInputZ = dataHandlerZ.nextTrainBatch(batchSize, false).xs;
        batchOutputZ = dataHandlerZOutput.nextTrainBatch(batchSize, false).xs;;
        
        trainLoss = await optimizer.minimize(() => {
            this.lstmLayer.resetStates();
            for (let k = 0; k < batchInputZ.shape[0]; k++){
                var input = batchInputZ.slice([k, 0], [1, 2])
                var output = this.model.apply(input.reshape([1, 1, 2]));
            }
            return this.mseLoss(batchOutputZ, output)
        }, true);

        trainLoss = Number(trainLoss.dataSync());
        epochLoss = epochLoss + trainLoss;

        await tf.nextFrame();
      }
      
      epochLoss = epochLoss / numBatch; // average
      logMessage(`\t[Average] Training Loss: ${epochLoss.toFixed(3)}. Epoch ${i} / ${epochs} \n`);
      Max.outlet("loss", epochLoss);

      // Validation 
      testBatchInputZ = dataHandlerZ.nextTestBatch(testBatchSize).xs;
      testBatchOutputZ = dataHandlerZOutput.nextTestBatch(testBatchSize).xs;
      this.lstmLayer.resetStates();
      for (let k = 0; k < testBatchInputZ.shape[0]; k++){
          var input = testBatchInputZ.slice([k, 0], [1, 2])
          var output = this.model.apply(input.reshape([1, 1, 2]));
      }
      valLoss = this.mseLoss(testBatchOutputZ, output)
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
  
  // generate(zs){
  //   let [outputsOn, outputsVel, outputsTS] = this.decoder.apply(zs);

  //   outputsOn = outputsOn.squeeze().transpose();

  //   outputsVel = outputsVel.squeeze().transpose();
  //   outputsTS = outputsTS.squeeze().transpose();

  //   console.log("shape", outputsOn.shape);
  //   outputsOn.print();

  //   // outputsOn = outputsOn.reshape([NUM_DRUM_CLASSES, LOOP_DURATION]);   
  //   // outputsVel = outputsVel.reshape([NUM_DRUM_CLASSES, LOOP_DURATION]);    
  //   // outputsTS = outputsTS.reshape([NUM_DRUM_CLASSES, LOOP_DURATION]); // timshift output

  //   return [outputsOn.arraySync(), outputsVel.arraySync(), outputsTS.arraySync()];
  // }

  generate(z1, z2){
    var input     = tf.tensor([z1, z2]);
    var output = this.model.apply(input.reshape([1, 1, 2]));
  }

  addHistory(z1, z2){
    var input     = tf.tensor([z1, z2]);
    var output = this.model.apply(input.reshape([1, 1, 2]));
  }

  async saveModel(path){
    const saved = await this.model.save(path);
    utils.post(saved);
  }

  async loadModel(path){
    this.model = await tf.loadLayersModel(path);
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



exports.loadAndTrainModel = loadAndTrainModel;
exports.saveModel = saveModel;
exports.loadModel = loadModel;
exports.clearModel = clearModel;
exports.stopTraining = stopTraining;
exports.isReadyToGenerate = isReadyToGenerate;
exports.isTraining = isTraining;
exports.setEpochs = setEpochs;

