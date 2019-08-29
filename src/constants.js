

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

const NUM_DRUM_CLASSES = DRUM_CLASSES.length;
const LOOP_DURATION = 32; // 2bars x 16th note

exports.MIDI_DRUM_MAP = MIDI_DRUM_MAP;
exports.DRUM_CLASSES = DRUM_CLASSES

exports.NUM_DRUM_CLASSES = NUM_DRUM_CLASSES;
exports.LOOP_DURATION = LOOP_DURATION