
const tf = require('@tensorflow/tfjs-node');
const utils = require('./utils.js')

const TRAIN_TEST_RATIO = 5 / 6;

// Constants
const ORIGINAL_DIM = require('./constants.js').ORIGINAL_DIM;
const NUM_DRUM_CLASSES = require('./constants.js').NUM_DRUM_CLASSES;
const LOOP_DURATION = require('./constants.js').LOOP_DURATION;

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
    for (let i = 0; i < batchSize; i++) {
      const idx = index();
      // training data is stored in (1, NUM_DRUM_CLASSES, LOOP_DURATION) array. 
      // you need to transpose them into (1, LOOP_DURATION, NUM_DRUM_CLASSES) to feed them into LSTM layers.
      const a = data[idx].transpose();
      batchArray.push(a);
    }
    const xs = tf.stack(batchArray);
    return {xs};
  }
}

exports.DataHandler = DataHandler;
exports.TRAIN_TEST_RATIO = TRAIN_TEST_RATIO;