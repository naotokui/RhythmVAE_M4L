
const Max = require('max-api');

// prefixes for max messages
const PREFIX_STATUS = "status";
const PREFIX_LOG = "log";

const ERROR_FLAG = 1;
const MESSAGE_FLAG = 0;


function create2DArray(row, col){
    var x = new Array(row);
    for (var i = 0; i < x.length; i++) {
        x[i] = new Array(col);
        for (var j =0; j < x[i].length; j++){
            x[i][j] = 0.0;
        }
    }
    return x;
}

// get max pitch index with onsets with none-zero velocity
function getMaxPitch(a){
    for (var r = a.length -1; r >= 0; r--){
        if (getMax(a[r]) > 0) return r;
    }
    return 0;
}

// get min pitch index with onsets with none-zero velocity
function getMinPitch(a){
    for (var r = 0; r < a.length; r++){
        if (getMax(a[r]) > 0) return r;
    }
    return 0;
}

function getMax(a){
    return Math.max(...a.map(e => Array.isArray(e) ? getMax(e) : e));
}

function getMin(a){
    return Math.min(...a.map(e => Array.isArray(e) ? getMin(e) : e));
}

function getRandomInt(max) {
    return Math.floor(Math.random() * Math.floor(max));
}

function shuffle(a) {
    var j, x, i;
    for (i = a.length - 1; i > 0; i--) {
        j = Math.floor(Math.random() * (i + 1));
        x = a[i];
        a[i] = a[j];
        a[j] = x;
    }
    return a;
}


function does_post(message, is_error){
    if (is_error) Max.post(message, Max.POST_LEVELS.ERROR);
    else Max.post(message);
}

function post(message){
    does_post(message, false);
}

function error(message){
    does_post(message, true);
}

function does_log_status(message, is_error){
    Max.outlet(PREFIX_STATUS, message, is_error)
    post(message, is_error);
}

function log_status(message){
    does_log_status(message, 0)
}

function error_status(message){
    does_log_status(message, 1);
}
  

exports.create2DArray = create2DArray;
exports.getRandomInt = getRandomInt;
exports.getMaxPitch = getMaxPitch;
exports.getMinPitch = getMinPitch;
exports.shuffle = shuffle;
exports.post = post;
exports.error = error;
exports.log_status = log_status;
exports.error_status = error_status;