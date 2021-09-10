// Sampling Z 
const tf = require('@tensorflow/tfjs-node');

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
    static className = "sampleLayer";
  }
  tf.serialization.registerClass(sampleLayer);
exports.sampleLayer = sampleLayer;