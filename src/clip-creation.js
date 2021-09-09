autowatch = 1;
outlets = 1;
inlets = 1;

var clip;

function setup(){
    root = new LiveAPI(this.patcher, "live_set");
}

function clip_start(dummy){
	clip = new LiveAPI(this.patcher, "this_device", "canonical_parent", "clip_slots", 0, "clip");
	if (clip.id == 0) {
		var slot = new LiveAPI(this.patcher, "this_device", "canonical_parent", "clip_slots", 0);
		slot.call("create_clip", 8);
		clip = new LiveAPI(this.patcher, "this_device", "canonical_parent", "clip_slots", 0, "clip");
	}
	clip.set("loop_end", 8.);
	clip.call("remove_notes_extended", 0, 127, 0., 8.);
}
/*
function clip_num_onsets(num_notes){
	clip.call("notes", num_notes);
}

function clip_add_note(pitch, startTime, duration, velocity, muted){
	clip.call("note", pitch, startTime, duration, velocity, muted);
}

function clip_done(dummy){
	clip.call("done");
}
*/

function clip_add_note(pitch, startTime, duration, velocity, mute){
	if (clip == null) throw("No clip")
	
	var note = {
		pitch: pitch, 
		start_time: startTime,
		duration: duration,
		velocity: velocity,
		mute: mute,
		probability: 0.9,
		velocity_deviation: -25,
		release_velocity: 64		
	}
	var notesArray = [note]
	var notesObject = { 
		notes: notesArray
	}
	var notesJson = JSON.stringify(notesObject)
	
	clip.call("add_new_notes", notesJson)
}