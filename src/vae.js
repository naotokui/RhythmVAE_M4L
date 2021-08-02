// VAE in tensorflow.js
// based on https://github.com/songer1993/tfjs-vae

const Max = require('max-api');
const tf = require('@tensorflow/tfjs-node');

const utils = require('./utils.js');
const data = require('./data.js');
require('./sampleLayer.js');

// Constants
const NUM_DRUM_CLASSES = require('./constants.js').NUM_DRUM_CLASSES;
const LOOP_DURATION = require('./constants.js').LOOP_DURATION;

const ORIGINAL_DIM = require('./constants.js').ORIGINAL_DIM;
const LATENT_DIM = 512;

const AIDJ_DECODER_Z512 = "file://" + __dirname + '/../aidj_models/decoder_z512_conditioned/model.json';
const AIDJ_DECODER_Z2 = "file://" + __dirname + '/../aidj_models/decoder_z2/model.json';

let model = null;
let numEpochs = 300; // default # of epochs

function initModel(){
  model = new ConditionalVAE(AIDJ_DECODER_Z512, AIDJ_DECODER_Z2);
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

// Generate 3 x 3 matrix
function generatePatternGrid(z1, z2, step){
  let onsetGrids = [];
  let zGrid = [];
  for  (let y = -1; y <= 1; y++){
    for  (let x = -1; x <= 1; x++){
      z1_ = z1 + x * step;
      z2_ = z2 + y * step;
      let [onsets, velocities, timeshifts] = generatePattern(z1_, z2_, 0.0);
      onsetGrids.push(onsets);
      zGrid.push([z1_, z2_]);
    }
  }
  return [onsetGrids, zGrid];
}

let prevZ;

function generatePattern(z1, z2, c_kick, c_kick_44, c_hat, c_others, noise_range=0.0){
  if (!checkIfModelReady()) return;

  // if (prevZ == null || noise_range == 0){
  //   prevZ = tf.mul(tf.randomNormal([1, LATENT_DIM]), 1.0);
  // }

  // let zs = tf.mul(tf.randomNormal([1, LATENT_DIM]), noise_range);
  // prevZ = tf.add(prevZ, zs);

  let zs, z512;
  if (z1 === 'undefined' || z2 === 'undefined'){
    zs = tf.randomNormal([1, 2]);
  } else {
    zs = tf.tensor2d([[z1 , z2]]);
  }
  // noise
  // if (noise_range > 0.0){
  //   var noise = tf.randomNormal([1, 2]);
  //   zs = zs.add(noise.mul(tf.scalar(noise_range)));
  // }

  // Deccode 2D z into 512D
  z512 = model.generate_z(zs, c_kick, c_kick_44, c_hat, c_others);

  // Generate rhythm
  return model.generate(z512, c_kick, c_kick_44, c_hat, c_others);
}

function encodePattern(inputOn, inputVel, inputTS){
  return model.encode(inputOn, inputVel, inputTS);
}

async function saveModel(filepath){
  model.saveModel(filepath);
}

async function loadModel(filepath){
  if (!model) initModel();
  model.loadModel(filepath);
}

async function saveEncoderModel(filepath){
  model.saveEncoderModel(filepath);
}

async function loadEncoderModel(filepath){
  if (!model) initModel();
  model.loadEncoderModel(filepath);
}


function clearModel(){
  model = null;
}

function bendModel(noise_range){
  model.bendModel(noise_range)
}

class ConditionalVAE {
  constructor(path512, path2) {
    this.loadAIDJModels(path512, path2);
    this.isTrained = false;
  }

  generate_z(zs, c_kick, c_kick_44, c_hat, c_others){
    c_kick = tf.tensor2d([[c_kick]]);
    c_kick_44 = tf.tensor2d([[c_kick_44]]);
    c_hat = tf.tensor2d([[c_hat]]);
    c_others = tf.tensor2d([[c_others]]);
    
    let z512 = this.decoder_z2.apply([zs, c_kick, c_kick_44, c_hat, c_others]);
    return z512;
  }
  
  async generate(zs, c_kick, c_kick_44, c_hat, c_others){
    c_kick = tf.tensor2d([[c_kick]]);
    c_kick_44 = tf.tensor2d([[c_kick_44]]);
    c_hat = tf.tensor2d([[c_hat]]);
    c_others = tf.tensor2d([[c_others]]);

    console.log(zs);

    let [outputsOn, outputsVel, outputsTS] = this.decoder.apply([zs, c_kick, c_kick_44, c_hat, c_others]);

    outputsOn = tf.transpose(tf.squeeze(outputsOn)); 
    outputsVel = tf.transpose(tf.squeeze(outputsVel));
    outputsTS = tf.transpose(tf.squeeze(outputsTS));

    return [outputsOn.arraySync(), outputsVel.arraySync(), outputsTS.arraySync()];
  }

  bendModel(noise_range){
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

  async saveModel(path){
    const saved = await this.decoder.save(path);
    utils.post(saved);
  }

  async loadModel(path){
    // this.decoder = await tf.loadLayersModel(path);
    // utils.post(this.decoder.summary());
    // //this.decoder = await tf.loadGraphModel(path);
    // this.isTrained = true;
  }

  async loadAIDJModels(path512, path2){
    utils.post(path512);
    this.decoder  = await tf.loadLayersModel(path512);
    this.decoder.summary();

    this.decoder_z2 = await tf.loadLayersModel(path2);
    this.decoder_z2.summary();

    this.isTrained = true;
  }

  async saveEncoderModel(path){
    const saved = await this.encoder.save(path);
    utils.post(saved);
  }

  async loadEncoderModel(path){
    this.encoder = await tf.loadLayersModel(path);
    this.isTrainedEncoder = true;
    utils.post("Encoder loaded");
  }

  encode(inputOn, inputVel, inputTS){
    if (!this.isTrainedEncoder || !this.encoder) {
      utils.error_status("EncoderModel is not trained yet");
      return null;
    }

    // reshaping...
    inputOn = inputOn.reshape([1, ORIGINAL_DIM]);
    inputVel = inputVel.reshape([1, ORIGINAL_DIM]);
    inputTS = inputTS.reshape([1, ORIGINAL_DIM]);
    
    let [zMean, zLogVar, zs] = this.encoder.apply([inputOn, inputVel, inputTS]);
    this.generate(zs); // generate rhythm pattern with the encoded z
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

function checkIfModelReady(){
  if (isReadyToGenerate()) return true;
  else {
    if (isTraining()){
        utils.error_status("Still training...");
    } else {
        utils.error_status("Model is not trained yet");
    }
    // throw Error("Model is not ready to generate.");
    return false;
  }
}

exports.initModel = initModel;
exports.saveEncoderModel = saveEncoderModel;
exports.loadEncoderModel = loadEncoderModel;
exports.clearModel = clearModel;
exports.generatePattern = generatePattern;
exports.generatePatternGrid = generatePatternGrid;
exports.encodePattern = encodePattern;
exports.isReadyToGenerate = isReadyToGenerate;
exports.isTraining = isTraining;
exports.setEpochs = setEpochs;
exports.bendModel = bendModel;

