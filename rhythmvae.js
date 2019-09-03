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

// prefixes for max messages
const PREFIX_STATUS = "status";

const ERROR_FLAG = 1;
const MESSAGE_FLAG = 0;

// This will be printed directly to the Max console
Max.post(`Loaded the ${path.basename(__filename)} script`);

// Global varibles
var train_data = [];

function output_status(message, is_error){
    Max.outlet(PREFIX_STATUS, message, is_error)

    if (is_error) Max.post(message, Max.POST_LEVELS.ERROR);
    else Max.post(message);
}

function isValidMIDIFile(midiFile){
    if (midiFile.header.tempos.length > 1){
        console.log("not compatible with tempo changes");
        console.log(midiFile.header.tempos);
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
    const timeshift = note.time - unit * index;

    return [index, timeshift];
}

// Convert midi into pianoroll matrix
function getPianoroll(midiFile){
    const tempo = getTempo(midiFile);

    var pianorolls = [];

    midiFile.tracks.forEach(track => {
    
        //notes are an array
        const notes = track.notes
        notes.forEach(note => {
            if ((note.midi in MIDI_DRUM_MAP)){
                let timing = getNoteIndexAndTimeshift(note, tempo);
                let index = timing[0];
                
                // add new array
                if (Math.floor(index / LOOP_DURATION) >= pianorolls.length){
                    pianorolls.push(utils.create2DArray(NUM_DRUM_CLASSES, LOOP_DURATION));
                }
                let matrix = pianorolls[Math.floor(index / LOOP_DURATION)];
                let drum_id = MIDI_DRUM_MAP[note.midi];
                matrix[drum_id][index % LOOP_DURATION] = note.velocity;       
            }
        })
    })

    /*    for debug */
    if (pianorolls.length > 0){ 
        var index = utils.getRandomInt(pianorolls.length); 
        let x = pianorolls[index];
        for (var i=0; i< NUM_DRUM_CLASSES; i++){
            for (var j=0; j < LOOP_DURATION; j++){
                Max.outlet("note_output", j, i, Math.ceil(x[i][j]));
            }
        }
    }
    
    // 2D array to tf.tensor2d
    for (var i=0; i < pianorolls.length; i++){
        train_data.push(tf.tensor2d(pianorolls[i], [NUM_DRUM_CLASSES, LOOP_DURATION]));
    }
}

function processMidiFile(filename){
    // // Read MIDI file into a buffer
    var input = fs.readFileSync(filename)

    var midiFile = new Midi(input);  
    if (isValidMIDIFile(midiFile) == false){
        Max.error("Invalid MIDI file");
        return false;
    }

    var tempo = getTempo(midiFile);
    console.log("tempo:", tempo);
    console.log("signature:", midiFile.header.timeSignatures);

    getPianoroll(midiFile);
    console.log("processed:", filename);
    return true;
}

// Add training data
Max.addHandler("midi", (filename) =>  {
    var count = 0;
    // is directory? 
    if (fs.existsSync(filename) && fs.lstatSync(filename).isDirectory()){
        // iterate over *.mid or *.midi files 
        // TODO: it may match *.mido *.midifile *.middleageman etc...
        glob(filename + '/**/*.mid*', {}, (err, files)=>{
            if (err) console.error(err); 
            else {
                for (var idx in files){
                    if (processMidiFile(files[idx])) count += 1;
                }
                Max.post("# of midi files added: " + count);
            }
        })
    } else {
        if (processMidiFile(filename)) count += 1;
        Max.post("# of midi files added: " + count);
    }
});

// Start training! 
Max.addHandler("train", ()=>{
    if (vae.isTraining()){
        output_status("Failed to start training. There is already an ongoing training process.", ERROR_FLAG);
        return;
    }

    output_status("Start training...", MESSAGE_FLAG);
    console.log("# of bars in training data:", train_data.length)
    vae.loadAndTrain(train_data);
});

// Generate a rhythm pattern
Max.addHandler("generate", (z1, z2)=>{
    if (vae.isReadyToGenerate()){    
        pattern = vae.generatePattern(z1, z2);
        for (var i=0; i< NUM_DRUM_CLASSES; i++){
            for (var j=0; j < LOOP_DURATION; j++){
                var x = 0.0;
                if (pattern[i * LOOP_DURATION + j] > 0.2) x = 1;
                Max.outlet("note_output", j, i, x);
            }
        }
    } else {
        output_status("Model is not trained yet", ERROR_FLAG);
    }
});

// Clear training data 
Max.addHandler("clear_train", ()=>{
    train_data = [];  // clear
    
});
