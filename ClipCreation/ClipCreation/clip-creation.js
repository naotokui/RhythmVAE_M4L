outlets = 1;
inlets = 1;

var root;

function test(){
    outlet(0, "bang");
}


function setup(){
    root = new LiveAPI(this.patcher, "live_set");
}

function play(flag){
    clip = new LiveAPI(this.patcher, "this_device", "canonical_parent", "clip_slots", 0, "clip");
	clip.call("select_all_notes");
	clip.call("replace_selected_notes");
	//clip.call("set_notes");
	clip.call("notes", 20);
	for (i = 0; i < 20; i++){
		clip.call("note", i + 30 + Math.floor(Math.random() * 30), 0.1 * i, 0.5, 100, 0);
	}
	clip.call("done");
	post(clip);
}