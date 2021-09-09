
const tf = require('@tensorflow/tfjs-node');
const utils = require('./utils.js')

const IMAGE_SIZE = 784;
const NUM_CLASSES = 10;

const TRAIN_TEST_RATIO = 5 / 6;

const ORIGINAL_DIM = require('./constants.js').ORIGINAL_DIM;

// Constants 
const NUM_DRUM_CLASSES = require('./constants.js').NUM_DRUM_CLASSES;
const LOOP_DURATION = require('./constants.js').LOOP_DURATION;
const BEAT_RESOLUTION = require('./constants.js').BEAT_RESOLUTION; 

class DataHandler {
  constructor(shuffled_data, trainIndices, testIndices) {
    this.dataset = shuffled_data;

    this.shuffledTrainIndex = 0;
    this.shuffledTestIndex = 0;

    this.NUM_DATASET_ELEMENTS = this.dataset.length;
    this.NUM_TRAIN_ELEMENTS   = Math.floor(TRAIN_TEST_RATIO * this.NUM_DATASET_ELEMENTS);
    this.NUM_TEST_ELEMENTS    = this.NUM_DATASET_ELEMENTS - this.NUM_TRAIN_ELEMENTS;

    // Slice the the training data into train and test sets.
    this.trainData = this.dataset.slice(0, this.NUM_TRAIN_ELEMENTS);
    this.testData = this.dataset.slice(this.NUM_TRAIN_ELEMENTS);

    // Shuffled indices for both training and test data
    this.trainIndices = trainIndices; 
    this.testIndices = testIndices; 
  }

  getDataSize(){
    return this.dataset.length;
  }

  nextTrainBatch(batchSize) {
    return this.nextBatch(batchSize, this.trainData, () => {
      this.shuffledTrainIndex = (this.shuffledTrainIndex + 1) % this.trainIndices.length;
      return this.trainIndices[this.shuffledTrainIndex];
    });
  }

  nextTestBatch(batchSize) {
    return this.nextBatch(batchSize, this.testData, () => {
      this.shuffledTestIndex = (this.shuffledTestIndex + 1) % this.testIndices.length;
      return this.testIndices[this.shuffledTestIndex];
    });
  }

  // Create batch from an array of tf.tensor2d
  nextBatch(batchSize, data, index) {
    const batchArray = [];
    const indices = [];
    for (let i = 0; i < batchSize; i++) {
      const idx = index();
      batchArray.push(tf.tensor2d(data[idx],[NUM_DRUM_CLASSES, LOOP_DURATION]).reshape([1, ORIGINAL_DIM]));
      indices.push(idx);
    }
    const axis = 0;
    const xs = tf.concat(batchArray, axis);
    return {xs: xs, indices: tf.tensor1d(indices, 'int32')};
  }
}


function isValidMIDIFile(midiFile){
  if (midiFile.header.tempos.length > 1){
      utils.error("not compatible with midi files containing multiple tempo changes")
      return false;
  }
  return true;
}

function getTempo(midiFile){
  if (midiFile.header.tempos.length == 0) return 120.0 // no tempo info, then use 120.0 
  return midiFile.header.tempos[0].bpm;  // use the first tempo info and ignore tempo changes in MIDI file
}

// Get location of a note in pianoroll
function getNoteIndexAndTimeshift(note, tempo){
  const unit = (60.0 / tempo) / BEAT_RESOLUTION; // the duration of 16th note
  const half_unit = unit * 0.5;

  const index = Math.max(0, Math.floor((note.time + half_unit) / unit)) // centering 
  const timeshift = (note.time - unit * index)/half_unit; // normalized

  return [index, timeshift];
}

function getNumOfDrumOnsets(onsets){
  var count = 0;
  for (var i = 0; i < NUM_DRUM_CLASSES; i++){
      for (var j=0; j < LOOP_DURATION; j++){
          if (onsets[i][j] > 0) count += 1;
      }
  }
  return count;
}

// Convert midi into pianoroll matrix
function processPianoroll(midiFile, midi_map){
  const tempo = getTempo(midiFile);

  // data array
  var onsets = [];
  var velocities = [];
  var timeshifts = [];

  midiFile.tracks.forEach(track => {
  
      //notes are an array
      const notes = track.notes
      notes.forEach(note => {
          if ((note.midi in midi_map)){
              let timing = getNoteIndexAndTimeshift(note, tempo);
              let index = timing[0];
              let timeshift = timing[1];
              
              // add new array
              while (Math.floor(index / LOOP_DURATION) >= onsets.length){
                  onsets.push(utils.create2DArray(NUM_DRUM_CLASSES, LOOP_DURATION));
                  velocities.push(utils.create2DArray(NUM_DRUM_CLASSES, LOOP_DURATION));
                  timeshifts.push(utils.create2DArray(NUM_DRUM_CLASSES, LOOP_DURATION));
              }

              // store velocity
              let drum_id = midi_map[note.midi];

              let matrix = onsets[Math.floor(index / LOOP_DURATION)];
              matrix[drum_id][index % LOOP_DURATION] = 1;    // 1 for onsets

              matrix = velocities[Math.floor(index / LOOP_DURATION)];
              matrix[drum_id][index % LOOP_DURATION] = note.velocity;    // normalized 0 - 1
              
              // store timeshift
              matrix = timeshifts[Math.floor(index / LOOP_DURATION)];
              matrix[drum_id][index % LOOP_DURATION] = timeshift;    // normalized -1 - 1
          }
      })
  })

  /*    for debug - output pianoroll */
  // if (velocities.length > 0){ 
  //     var index = utils.getRandomInt(velocities.length); 
  //     let x = velocities[index];
  //     for (var i=0; i< NUM_DRUM_CLASSES; i++){
  //         for (var j=0; j < LOOP_DURATION; j++){
  //             Max.outlet("matrix_output", j, i, Math.ceil(x[i][j]));
  //         }
  //     }
  // }

  return [onsets, velocities, timeshifts];
}

exports.DataHandler = DataHandler;
exports.TRAIN_TEST_RATIO = TRAIN_TEST_RATIO;
exports.processPianoroll = processPianoroll;
exports.isValidMIDIFile = isValidMIDIFile;
exports.getNumOfDrumOnsets = getNumOfDrumOnsets;