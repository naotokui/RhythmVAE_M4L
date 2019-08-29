
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


function getRandomInt(max) {
    return Math.floor(Math.random() * Math.floor(max));
  }

exports.create2DArray = create2DArray;
exports.getRandomInt = getRandomInt;