const path = require('path');
const Max = require('max-api');
const Live = require('live-api');


let root = new LiveAPI(this.patcher, "live_set");

// This will be printed directly to the Max console
Max.post(`Loaded the ${path.basename(__filename)} script`);
Max.post(root);

// Use the 'addHandler' function to register a function for a particular message
Max.addHandler("bang", () => {
	Max.post("Who you think you bangin'?");
});

// Use the 'outlet' function to send messages out of node.script's outlet
Max.addHandler("echo", (msg) => {
	Max.outlet(msg);
});


function test(){
    outlet(0, "bang");
}

function setup(){
}

function play(flag){
    clip = new LiveAPI(this.patcher, "this_device", "canonical_parent", "clip_slots", 0, "clip");
	post(clip.id);
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