outlets = 1;
inlets = 1;

var clip;

function test(){
    outlet(0, "bang");
}

function setup(){
    root = new LiveAPI(this.patcher, "live_set");
}


function clip_start(dummy){
	clip = new LiveAPI(this.patcher, "this_device", "canonical_parent", "clip_slots", 0, "clip");
	clip.call("select_all_notes");
	clip.call("replace_selected_notes");
}

function clip_num_onsets(num_notes){
	clip.call("notes", num_notes);
}

function clip_add_note(pitch, time, duration, velocity, muted){
	clip.call("note", pitch, time, duration, velocity, muted);
}

function clip_done(dummy){
	clip.call("done");
}