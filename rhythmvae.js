const path = require('path');
const Max = require('max-api');
const fs = require('fs')
const tf = require('@tensorflow/tfjs-node');

const MIDI_DRUM_MAP = require('./src/constants.js').MIDI_DRUM_MAP;
const DRUM_CLASSES = require('./src/constants.js').DRUM_CLASSES;
const NUM_DRUM_CLASSES = require('.//src/constants.js').NUM_DRUM_CLASSES;
const LOOP_DURATION = require('.//src/constants.js').LOOP_DURATION;

const utils = require('./src/utils.js');
const vae = require('./src/vae.js');

const { Midi } = require('@tonejs/midi'); // https://github.com/Tonejs/Midi

// This will be printed directly to the Max console
Max.post(`Loaded the ${path.basename(__filename)} script`);

// var x = utils.create2DArray(10, 10);
// x = tf.tensor2d(x, [10, 10]);
// console.log(x);

var train_data = [];

async function loadMidi(filepath){
    const midi = await Midi.fromUrl(filepath)

    //the file name decoded from the first track
    const name = midi.name

    //get the tracks
    midi.tracks.forEach(track => {
        //notes are an array
        const notes = track.notes
        notes.forEach(note => {
            console.log(note);
        })

        //the track also has a channel and instrument
        console.log(track.instrument.name);
    })
}


function processMidiFile(midiFile){

    var format = midiFile.header.getFormat(); // 0, 1 or 2
    var num_tracks = midiFile.header.getTracksCount(); // n


    console.log(midiFile.header);
    console.log(num_tracks);

    // // Or for a single track
    // var trackEventsChunk = midiFile.tracks[0].getTrackContent();
    // var events = MIDIEvents.createParser(trackEventsChunk);

    // var event;
    // while(event = events.next()) {
    //     // Printing meta events containing text only
    //     if(event.type === MIDIEvents.EVENT_META && event.text) {
    //         console.log('Text meta: '+event.text);
    //     }
    //     console.log(event);
    // }


    // var events = midiFile.getTrackEvents(0);
    // events.forEach(console.log.bind(console));
}


function validateMIDIFile(midiFile){
    if (midiFile.header.tempos.length > 1){
        console.log("not compatible with tempo changes");
        console.log(midiFile.header.tempos);
        return false;
    }
    return true;
}

function getTempo(midiFile){
    // no tempo info, then use 120.0 
    if (midiFile.header.tempos.length == 0) return 120.0
    return midiFile.header.tempos[0].bpm;
}

function getNoteIndexAndTimeshift(note, tempo){
    const unit = (60.0 / tempo) / 4.0; // the duration of 16th note
    const half_unit = unit * 0.5;

    const index = Math.max(0, Math.floor((note.time + half_unit) / unit))
    const timeshift = note.time - unit * index;

    return [index, timeshift];
}

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
    var index = utils.getRandomInt(pianorolls.length); 

    let x = pianorolls[index];
    let y = tf.tensor2d(x, [NUM_DRUM_CLASSES, LOOP_DURATION]).reshape([1, NUM_DRUM_CLASSES*LOOP_DURATION]);
    let z = y.dataSync();

    console.log(z.toString());


    for (var i=0; i< NUM_DRUM_CLASSES; i++){
        for (var j=0; j < LOOP_DURATION; j++){
            Max.outlet("random", j, i, Math.ceil(z[i * LOOP_DURATION + j]));
        }
    }

    for (var i=0; i < pianorolls.length; i++){
        train_data.push(tf.tensor2d(pianorolls[i], [NUM_DRUM_CLASSES, LOOP_DURATION]));
    }
}


// Use the 'addHandler' function to register a function for a particular message
Max.addHandler("midi", (filename) =>  {

    // loadMidi('./3_hiphop_90_beat_4-4.mid');

    // // Read MIDI file into a buffer
    var input = fs.readFileSync(filename)

   var midiFile = new Midi(input);  
    if (validateMIDIFile(midiFile) == false){
        Max.error("Invalid MIDI file");
        return;
    }

    var tempo = getTempo(midiFile);
    console.log("tempo:", tempo);
    console.log("signature:", midiFile.header.timeSignatures);

//    console.log(midiFile);
    // processMidiFile(midiFile);
    getPianoroll(midiFile);

    // midiFile.tracks.forEach(track => {
    //     //tracks have notes and controlChanges
    //     console.log(track.channel);


    //     //notes are an array
    //     const notes = track.notes
    //     notes.forEach(note => {
    //         console.log(note.time);


    //       //note.midi, note.time, note.duration, note.name
    //     })
      
      
    //     //the track also has a channel and instrument
    //     console.log(track.instrument.name)
    //   })


 
// Let's assume there is an ArrayBuffer called arrayBuffer which contains the binary content of a
// MIDI file.
 
    // parseArrayBuffer(input).then((json) => {
    //     console.log(json);
    // });

	Max.post("done");
});


// Use the 'outlet' function to send messages out of node.script's outlet
Max.addHandler("echo", (msg) => {
	Max.outlet(msg);
});

Max.addHandler("train", ()=>{
    vae.loadAndTrain(train_data);
});

Max.addHandler("generate", (z1, z2)=>{
    pattern = vae.generatePattern(z1, z2);
    console.log(pattern.toString());
    for (var i=0; i< NUM_DRUM_CLASSES; i++){
        for (var j=0; j < LOOP_DURATION; j++){
            var x = 0.0;
            if (pattern[i * LOOP_DURATION + j] > 0.2) x = 1;
            Max.outlet("random", j, i, x);
        }
    }
});

// // var fs = require('fs')
// // var parseMidi = require('midi-file').parseMidi
// // var writeMidi = require('midi-file').writeMidi
 
// // Read MIDI file into a buffer
// var input = fs.readFileSync('3_hiphop_90_beat_4-4.mid')
 
// // Parse it into an intermediate representation
// // This will take any array-like object.  It just needs to support .length, .slice, and the [] indexed element getter.
// // Buffers do that, so do native JS arrays, typed arrays, etc.
// var parsed = parseMidi(input)

// for (var note in parsed){
//     console.log(note);
// }


// // Turn the intermediate representation back into raw bytes
// var output = writeMidi(parsed)
 
// // Note that the output is simply an array of byte values.  writeFileSync wants a buffer, so this will convert accordingly.
// // Using native Javascript arrays makes the code portable to the browser or non-node environments
// var outputBuffer = new Buffer(output)
 
// // Write to a new MIDI file.  it should match the original
// fs.writeFileSync('copy_star_wars.mid', outputBuffer)