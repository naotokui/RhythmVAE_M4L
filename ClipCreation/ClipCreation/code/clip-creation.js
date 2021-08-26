outlets = 1;
inlets = 1;

var clip;

function test(){
    outlet(0, "bang");
}

function setup(){
    root = new LiveAPI(this.patcher, "live_set");
}


function start(){
	clip = new LiveAPI(this.patcher, "this_device", "canonical_parent", "clip_slots", 0, "clip");
	clip.call("select_all_notes");
	clip.call("replace_selected_notes");
}

function add_note(pitch){
	//clip.call("set_notes");
	clip.call("notes", 1);
	clip.call("note", pitch, 0.1 * i, 0.5, 100, 0);
}

function done(){
	clip.call("done");
}