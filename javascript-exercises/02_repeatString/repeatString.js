const repeatString = function(phrase, n) {
    if (n < 0) {
        return "ERROR";
    }
    let word = '';
    for (let i = 0; i < n; i++) {
        word += phrase;
    }
    return word;
};

// Do not edit below this line
module.exports = repeatString;
