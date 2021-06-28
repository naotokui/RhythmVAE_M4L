

const DRUM_CLASSES = [
  'Kick',
  'Snare',
  'Hi-hat closed',
  'Hi-hat open',
  'Tom low',
  'Tom mid',
  'Tom high',
  'Clap',
  'Rim'
]

const MIDI_DRUM_MAP = {
  36: 0,
  35: 0,
  38: 1,
  27: 1,
  28: 1,
  31: 1,
  32: 1,
  33: 1,
  34: 1,
  37: 1,
  39: 1,
  40: 1,
  56: 1,
  65: 1,
  66: 1,
  75: 1,
  85: 1,
  42: 2,
  44: 2,
  54: 2,
  68: 2,
  69: 2,
  70: 2,
  71: 2,
  73: 2,
  78: 2,
  80: 2,
  46: 3,
  67: 3,
  72: 3,
  74: 3,
  79: 3,
  81: 3,
  45: 4,
  29: 4,
  41: 4,
  61: 4,
  64: 4,
  84: 4,
  48: 5,
  47: 5,
  60: 5,
  63: 5,
  77: 5,
  86: 5,
  87: 5,
  50: 6,
  30: 6,
  43: 6,
  62: 6,
  76: 6,
  83: 6,
  49: 7,
  55: 7,
  57: 7,
  58: 7,
  51: 8,
  52: 8,
  53: 8,
  59: 8,
  82: 8
}

const MIDI_DRUM_MAP_STRICT = {
  36: 0, // Acoustic Bass Drum
  35: 0, // Bass drum
  38: 1, // Acoustic Snare
  40: 1, // Electric Snare
  42: 2, // closed hihat
  44: 3, // pedal hihat
  46: 3, // open hihat
  41: 4, // low floor tom
  45: 4, // low tom
  47: 5, // low-mid tom
  48: 5, // high-mid tom
  43: 6, // high floor tom
  50: 6, // high tom
  39: 7, // hand clap
  51: 8, // Ride Symbal 1
  52: 8, // Chinese Symbal
  53: 8, // Ride Bell
  59: 8, // Ride Symbal 2
}


const NUM_DRUM_CLASSES = DRUM_CLASSES.length;
const BEAT_RESOLUTION = 4;
const LOOP_DURATION = BEAT_RESOLUTION * 4 * 1; // 2bars x 16th note

const MIN_ONSETS_THRESHOLD = 5; // ignore loops with onsets less than this num

const ORIGINAL_DIM = NUM_DRUM_CLASSES * LOOP_DURATION;

exports.MIDI_DRUM_MAP = MIDI_DRUM_MAP;
exports.MIDI_DRUM_MAP_STRICT = MIDI_DRUM_MAP_STRICT;
exports.DRUM_CLASSES = DRUM_CLASSES;

exports.NUM_DRUM_CLASSES = NUM_DRUM_CLASSES;
exports.BEAT_RESOLUTION = BEAT_RESOLUTION;
exports.LOOP_DURATION = LOOP_DURATION;
exports.ORIGINAL_DIM = ORIGINAL_DIM;
exports.MIN_ONSETS_THRESHOLD = MIN_ONSETS_THRESHOLD;
