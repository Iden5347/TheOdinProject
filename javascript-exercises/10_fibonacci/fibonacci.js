const fibonacci = function(n) {
    if (n < 0) {
        return "OOPS";
    }
    let first = 1;
    let second = 1;
    for (let i = 0; i < n - 2; i++) {
        let third = first + second;
        first = second;
        second = third;
    }
    return second;
};
console.log(fibonacci(6));
// Do not edit below this line
module.exports = fibonacci;
