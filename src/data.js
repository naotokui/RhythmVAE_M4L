
const tf = require('@tensorflow/tfjs-node');
const utils = require('./utils.js')

const IMAGE_SIZE = 784;
const NUM_CLASSES = 10;

const TRAIN_TEST_RATIO = 5 / 6;

const ORIGINAL_DIM = require('./constants.js').ORIGINAL_DIM;

class DataHandler {
  constructor(training_data) {
    this.dataset = utils.shuffle(training_data);

    this.shuffledTrainIndex = 0;
    this.shuffledTestIndex = 0;

    this.NUM_DATASET_ELEMENTS = this.dataset.length;

    this.NUM_TRAIN_ELEMENTS   = Math.floor(TRAIN_TEST_RATIO * this.NUM_DATASET_ELEMENTS);
    this.NUM_TEST_ELEMENTS    = this.NUM_DATASET_ELEMENTS - this.NUM_TRAIN_ELEMENTS;

    // Slice the the training data into train and test sets.
    this.trainData = this.dataset.slice(0, this.NUM_TRAIN_ELEMENTS);
    this.testData = this.dataset.slice(this.NUM_TRAIN_ELEMENTS);

    // Shuffled indices for both training and test data
    this.trainIndices = tf.util.createShuffledIndices(this.NUM_TRAIN_ELEMENTS);
    this.testIndices = tf.util.createShuffledIndices(this.NUM_TEST_ELEMENTS);

    console.log(this.trainIndices);
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
      batchArray.push(data[idx].reshape([1, ORIGINAL_DIM]));
    }
    const axis = 0;
    const xs = tf.concat(batchArray, axis);
    return {xs};
  }
}

exports.DataHandler = DataHandler;