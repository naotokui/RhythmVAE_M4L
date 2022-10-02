const path = require('path');
const Max = require('max-api');
const fs = require('fs')
const glob = require('glob');
const tf = require('@tensorflow/tfjs-node');
const { Midi } = require('@tonejs/midi'); // https://github.com/Tonejs/Midi

// Constants 
const MIDI_DRUM_MAP = require('./src/constants.js').MIDI_DRUM_MAP;
const MIDI_DRUM_MAP_STRICT = require('./src/constants.js').MIDI_DRUM_MAP_STRICT;
const DRUM_CLASSES = require('./src/constants.js').DRUM_CLASSES;
const NUM_DRUM_CLASSES = require('.//src/constants.js').NUM_DRUM_CLASSES;
const LOOP_DURATION = require('.//src/constants.js').LOOP_DURATION;
const MIN_ONSETS_THRESHOLD = require('./src/constants.js').MIN_ONSETS_THRESHOLD;
const BEAT_RESOLUTION = require('./src/constants.js').BEAT_RESOLUTION; 

// VAE model and Utilities
const utils = require('./src/utils.js');
const vae = require('./src/vae.js');
const sequence = require('./src/sequence.js');

// This will be printed directly to the Max console
Max.post(`Loaded the ${path.basename(__filename)} script`);

// Global varibles
var train_data_onsets = []; 
var train_data_velocities = []; 
var train_data_timeshifts = [];

const SEQ_LENGTH = 4; // predict next bar from the last 4 bars
var train_seq_inputs = [];
var train_seq_inputs_zs = []; 
var train_seq_output = []; 
var train_seq_output_zs = []; 

var isGenerating = false;

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
    
    // 2D array to tf.tensor2d
    var onset_index = [];
    for (var i=0; i < onsets.length; i++){
        if (getNumOfDrumOnsets(onsets[i]) > MIN_ONSETS_THRESHOLD){
            train_data_onsets.push(tf.tensor2d(onsets[i], [NUM_DRUM_CLASSES, LOOP_DURATION]));
            train_data_velocities.push(tf.tensor2d(velocities[i], [NUM_DRUM_CLASSES, LOOP_DURATION]));
            train_data_timeshifts.push(tf.tensor2d(timeshifts[i], [NUM_DRUM_CLASSES, LOOP_DURATION]));
        
            // index of the last array added
            onset_index.push(train_data_onsets.length - 1);
        }
    }

    for (var i=0; i < onset_index.length - SEQ_LENGTH - 1; i++){
        var input = new Array(SEQ_LENGTH);
        var index = onset_index[i];
        for (var j=0; j<SEQ_LENGTH; j++) input[j] = index + j;
        train_seq_inputs.push(input);
        train_seq_output.push(i + SEQ_LENGTH);
    }
    // console.log(train_seq_inputs, train_seq_output);
}

function processMidiFile(filename, mapping = 0){
    // // Read MIDI file into a buffer
    var input = fs.readFileSync(filename)

    var midiFile = new Midi(input);  
    if (isValidMIDIFile(midiFile) == false){
        utils.error("Invalid MIDI file: " + filename);
        return false;
    }

    var tempo = getTempo(midiFile);
    // console.log("tempo:", tempo);
    // console.log("signature:", midiFile.header.timeSignatures);

    // select mapping
    if (mapping == 0) midi_map = MIDI_DRUM_MAP_STRICT; 
    else midi_map = MIDI_DRUM_MAP;

    processPianoroll(midiFile, midi_map);
    // console.log("processed:", filename);
    return true;
}

// Add training data
Max.addHandler("midi", (filename, mapping) =>  {
    var count = 0;
    // is directory? 
    if (fs.existsSync(filename) && fs.lstatSync(filename).isDirectory()){
        // iterate over *.mid or *.midi files
        glob(filename + '**/*.@(mid|midi)', {}, (err, files)=>{
            utils.post("# of files in dir: " + files.length); 
            if (err) utils.error(err); 
            else {
                for (var idx in files){   
                    try {
                        if (processMidiFile(files[idx], mapping)) count += 1;
                    } catch(error) {
                        console.error("failed to process " + files[idx] + " - " + error);
                      }
                }
                utils.post("# of midi files added: " + count);    
                reportNumberOfBars();
            }
        })
    } else {
        if (processMidiFile(filename, mapping)) count += 1;
        Max.post("# of midi files added: " + count);    
        reportNumberOfBars();
    }
});

// Start training! 
Max.addHandler("train", ()=>{
    if (vae.isTraining()){
        utils.error_status("Failed to start training. There is already an ongoing training process.");
        return;
    }

    if (train_data_onsets.length == 0){
        utils.error_status("No training data provided.");
        return;
    }

    // Start training
    utils.log_status("Start training...");
    console.log("# of bars in training data:", train_data_onsets.length * 2);
    reportNumberOfBars();
    vae.loadAndTrain(train_data_onsets, train_data_velocities, train_data_timeshifts);
});

// Generate a rhythm pattern
Max.addHandler("generate", (z1, z2, threshold, noise_range = 0.0)=>{
    try {
        generatePattern(z1, z2, threshold, noise_range);
    } catch(error) {
        utils.error_status(error);
    }
});

async function generatePattern(z1, z2, threshold, noise_range){
    if (vae.isReadyToGenerate()){    
      if (isGenerating) return;
  
      isGenerating = true;
      let [onsets, velocities, timeshifts] = vae.generatePattern(z1, z2, noise_range);
      Max.outlet("matrix_clear", 1); // clear all
      for (var i=0; i< NUM_DRUM_CLASSES; i++){
          var sequence = []; // for velocity
          var sequenceTS = []; // for timeshift
          // output for matrix view
          for (var j=0; j < LOOP_DURATION; j++){
              // if (pattern[i * LOOP_DURATION + j] > 0.2) x = 1;
              if (onsets[i][j] > threshold){
                Max.outlet("matrix_output", j + 1, i + 1, 1); // index for live.grid starts from 1
           
                // for live.step
                sequence.push(Math.floor(velocities[i][j]*127. + 1)); // 0-1 -> 1-127
                sequenceTS.push(Math.floor(utils.scale(timeshifts[i][j], -1., 1, 0, 127))); // -1 - 1 -> 0 - 127
              } else {
                sequence.push(0);
                sequenceTS.push(64);
              }
          }
  
          // output for live.step object
          Max.outlet("seq_output", i+1, sequence.join(" "));
          Max.outlet("timeshift_output", i+1, sequenceTS.join(" "));
      }
      Max.outlet("generated", 1);
      utils.log_status("");
      isGenerating = false;
  } else {
    if (vae.isTraining()){
        utils.error_status("Still training...");
    } else {
        utils.error_status("Model is not trained yet");
    }
  }
}

Max.addHandler("train_seq", (numEpoch) =>  {
    if (vae.isReadyToGenerate()){    
        for (var i=0; i < train_seq_inputs.length; i++){
            var inputs = train_seq_inputs[i];
            var output = train_seq_output[i];

            // input sequence
            var inputZs = [];
            for (var j=0; j < inputs.length; j++){
                var onset = train_data_onsets[inputs[j]];
                var velocity = train_data_velocities[inputs[j]];
                var ts = train_data_timeshifts[inputs[j]];
                let zs = vae.encodePattern(onset, velocity, ts);
                inputZs.push(zs);
            }
            train_seq_inputs_zs.push(tf.tensor2d(inputZs, [SEQ_LENGTH, 2]));

            // output 
            var onset = train_data_onsets[output];
            var velocity = train_data_velocities[output];
            var ts = train_data_timeshifts[output];
            let zs = vae.encodePattern(onset, velocity, ts);
            train_seq_output_zs.push(tf.tensor2d(zs, [1, 2]));
            console.assert(train_seq_inputs_zs.length == train_seq_output_zs.length);
        }
        sequence.loadAndTrainModel(train_seq_inputs_zs, train_seq_output_zs, numEpoch)
    } else{
        utils.error_status("You need to train VAE first");
    }
});

Max.addHandler("generate_next_z", (z1, z2) =>  {
    sequence.generateNextZ(z1, z2);
});

Max.addHandler("add_history", (z1, z2) =>  {
    sequence.addHistory(z1, z2);
});

Max.addHandler("reset_history", (z1, z2) =>  {
    sequence.resetHistory();
});

// Start encoding... reset input matrix
var input_onset;
var input_velocity; 
var input_timeshift;
Max.addHandler("encode_start", (is_test) =>  {
    Max.post("encode_start");
    input_onset     = utils.create2DArray(NUM_DRUM_CLASSES, LOOP_DURATION);
    input_velocity  = utils.create2DArray(NUM_DRUM_CLASSES, LOOP_DURATION);
    input_timeshift = utils.create2DArray(NUM_DRUM_CLASSES, LOOP_DURATION);

    if (is_test){
        for (var i=0; i < LOOP_DURATION; i=i+4){
            input_onset[0][i] = 1;
            input_velocity[0][i] = 0.8;
        }
        
    }
});

Max.addHandler("encode_add", (pitch, time, duration, velocity, muted, mapping) =>  {

    // select mapping
    if (mapping == 0) midi_map = MIDI_DRUM_MAP_STRICT; 
    else midi_map = MIDI_DRUM_MAP;

    // add note
    if (!muted){
        var unit = 0.25; // 1.0 = quarter note   grid size = 16th note 
        const half_unit = unit * 0.5;
        const index = Math.max(0, Math.floor((time + half_unit) / unit)) // centering 
        const timeshift = (time - unit * index)/half_unit; // normalized
        Max.post("index", index, timeshift, pitch);
        // Ignore notes after the first 2 bars
        if (index < LOOP_DURATION && pitch in midi_map){
            let drum_id = midi_map[pitch];
			Max.post("pitch", pitch, drum_id);
            input_onset[drum_id][index]     = 1;
            input_velocity[drum_id][index]  = velocity/127.;
            input_timeshift[drum_id][index]     = timeshift;
        }
    }
});

Max.addHandler("encode_done", () =>  {
    utils.post(input_onset);
    utils.post(input_velocity);
    utils.post(input_timeshift);

    // Encoding!
    var inputOn     = tf.tensor2d(input_onset, [NUM_DRUM_CLASSES, LOOP_DURATION])
    var inputVel    = tf.tensor2d(input_velocity, [NUM_DRUM_CLASSES, LOOP_DURATION])
    var inputTS     = tf.tensor2d(input_timeshift, [NUM_DRUM_CLASSES, LOOP_DURATION])
    let zs = vae.encodePattern(inputOn, inputVel, inputTS);
    
    // output encoded z vector
    utils.post(zs)
    Max.outlet("zs", zs[0], zs[1]);  
});

// Clear training data 
Max.addHandler("clear_train", ()=>{
    train_data_onsets = []; // clear
    train_data_velocities = [];
    train_data_timeshift = [];  

    reportNumberOfBars();
});

Max.addHandler("stop", ()=>{
    vae.stopTraining();
});

Max.addHandler("savemodel", (path)=>{
    // check if already trained or not
    if (vae.isReadyToGenerate()){
        filepath = "file://" + path;
        vae.saveModel(filepath);
        utils.log_status("Model saved.");
    } else {
        utils.error_status("Train a model first!");
    }
});

Max.addHandler("loadmodel", (path)=>{
    filepath = "file://" + path;
    vae.loadModel(filepath);
    utils.log_status("Model loaded!");
});


Max.addHandler("savemodel_seq", (path)=>{
    // check if already trained or not
    filepath = "file://" + path;
    sequence.saveModel(filepath);
    utils.log_status("Model saved.");
});

Max.addHandler("loadmodel_seq", (path)=>{
    filepath = "file://" + path;
    sequence.loadModel(filepath);
    utils.log_status("Model loaded!");
});

Max.addHandler("clearmodel", ()=>{
    vae.clearModel();
    utils.log_status("Model reset");
});

Max.addHandler("epochs", (e)=>{
    vae.setEpochs(e);
    utils.post("number of epochs: " + e);
});

function reportNumberOfBars(){
    Max.outlet("train_bars", train_data_onsets.length * 2);  // number of bars for training
}

// Generate a rhythm pattern
Max.addHandler("bend", (noise_range = 0.0)=>{
    try {
        vae.bendModel(noise_range);
    } catch(error) {
        console.log(error);
        utils.error_status("model bending failed");
    }
});

Max.outlet("loaded");