const path = require('path');
const Max = require('max-api');
const fs = require('fs')
const glob = require('glob');
const tf = require('@tensorflow/tfjs-node');
const { Midi } = require('@tonejs/midi'); // https://github.com/Tonejs/Midi

// Constants 
const MIDI_DRUM_MAP = require('./src/constants.js').MIDI_DRUM_MAP;
const DRUM_CLASSES = require('./src/constants.js').DRUM_CLASSES;
const NUM_DRUM_CLASSES = require('.//src/constants.js').NUM_DRUM_CLASSES;
const LOOP_DURATION = require('.//src/constants.js').LOOP_DURATION;

// VAE model and Utilities
const utils = require('./src/utils.js');
const vae = require('./src/vae.js');

// This will be printed directly to the Max console
Max.post(`Loaded the ${path.basename(__filename)} script`);

// Global varibles
var train_data = []; 
var train_data_timeshift = [];
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
    const unit = (60.0 / tempo) / 4.0; // the duration of 16th note
    const half_unit = unit * 0.5;

    const index = Math.max(0, Math.floor((note.time + half_unit) / unit)) // centering 
    const timeshift = (note.time - unit * index)/half_unit; // normalized

    return [index, timeshift];
}

// Convert midi into pianoroll matrix
function processPianoroll(midiFile){
    const tempo = getTempo(midiFile);

    var pianorolls = [];
    var timeshifts = [];

    midiFile.tracks.forEach(track => {
    
        //notes are an array
        const notes = track.notes
        notes.forEach(note => {
            if ((note.midi in MIDI_DRUM_MAP)){
                let timing = getNoteIndexAndTimeshift(note, tempo);
                let index = timing[0];
                let timeshift = timing[1];
                
                // add new array
                if (Math.floor(index / LOOP_DURATION) >= pianorolls.length){
                    pianorolls.push(utils.create2DArray(NUM_DRUM_CLASSES, LOOP_DURATION));
                    timeshifts.push(utils.create2DArray(NUM_DRUM_CLASSES, LOOP_DURATION));
                }

                // store velocity
                let drum_id = MIDI_DRUM_MAP[note.midi];
                let matrix = pianorolls[Math.floor(index / LOOP_DURATION)];
                matrix[drum_id][index % LOOP_DURATION] = note.velocity;    // normalized 0 - 1
                
                // store timeshift
                matrix = timeshifts[Math.floor(index / LOOP_DURATION)];
                matrix[drum_id][index % LOOP_DURATION] = timeshift;    // normalized -1 - 1
            }
        })
    })

    /*    for debug - output pianoroll */
    // if (pianorolls.length > 0){ 
    //     var index = utils.getRandomInt(pianorolls.length); 
    //     let x = pianorolls[index];
    //     for (var i=0; i< NUM_DRUM_CLASSES; i++){
    //         for (var j=0; j < LOOP_DURATION; j++){
    //             Max.outlet("matrix_output", j, i, Math.ceil(x[i][j]));
    //         }
    //     }
    // }
    
    // 2D array to tf.tensor2d
    for (var i=0; i < pianorolls.length; i++){
        train_data.push(tf.tensor2d(pianorolls[i], [NUM_DRUM_CLASSES, LOOP_DURATION]));
        train_data_timeshift.push(tf.tensor2d(timeshifts[i], [NUM_DRUM_CLASSES, LOOP_DURATION]));
    }
}

function processMidiFile(filename){
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
    processPianoroll(midiFile);
    // console.log("processed:", filename);
    return true;
}

// Add training data
Max.addHandler("midi", (filename) =>  {
    var count = 0;
    // is directory? 
    if (fs.existsSync(filename) && fs.lstatSync(filename).isDirectory()){
        // iterate over *.mid or *.midi files 
        // TODO: it may match *.mido *.midifile *.middleageman etc...
        let pattern = filename + '**/*.(mid|midi)';
        utils.post(pattern);
        glob(pattern, {}, (err, files)=>{

            utils.post("# of files in dir: " + files.length); 
            if (err) utils.error(err); 
            else {
                for (var idx in files){
                    utils.post(files[idx]);    
                    if (processMidiFile(files[idx])) count += 1;
                }
                utils.post("# of midi files added: " + count);    
                reportNumberOfBars();
            }
        })
    } else {
        if (processMidiFile(filename)) count += 1;
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

    utils.log_status("Start training...");
    console.log("# of bars in training data:", train_data.length * 2);
    reportNumberOfBars();
    vae.loadAndTrain(train_data, train_data_timeshift);
});

// Generate a rhythm pattern
Max.addHandler("generate", (z1, z2, threshold)=>{
    try {
        generatePattern(z1, z2, threshold);
    } catch(error) {
        error_status(error);
    }
});

async function generatePattern(z1, z2, threshold){
    if (vae.isReadyToGenerate()){    
      if (isGenerating) return;
  
      isGenerating = true;
      let [pattern, timeshifts] = vae.generatePattern(z1, z2);
      Max.outlet("matrix_clear",1); // clear all
      for (var i=0; i< NUM_DRUM_CLASSES; i++){
          var sequence = [];
          var sequenceTS = []; // for timeshift
          // output for matrix view
          for (var j=0; j < LOOP_DURATION; j++){
              var x = 0.0;
              // if (pattern[i * LOOP_DURATION + j] > 0.2) x = 1;
              if (pattern[i][j] > threshold){ 
                x = 1;
                Max.outlet("matrix_output", j + 1, i + 1, x); // index for live.grid starts from 1
              }

              // for live.step
              if (pattern[i][j] > threshold) {
                  sequence.push(Math.floor(pattern[i][j]*127.));
                  sequenceTS.push(Math.floor(utils.scale(timeshifts[i][j], -1., 1, 0, 127)));
              }
              else {
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
      utils.error_status("Model is not trained yet");
  }
}

// Clear training data 
Max.addHandler("clear_train", ()=>{
    train_data = []; // clear
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

Max.addHandler("epochs", (e)=>{
    vae.setEpochs(e);
    utils.post("number of epochs: " + e);
});

function reportNumberOfBars(){
    Max.outlet("train_bars", train_data.length * 2);  // number of bars for training
}