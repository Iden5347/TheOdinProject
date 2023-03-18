const leapYears = function(year) {
    return ((year % 4 == 0) && ((year % 100 != 0) || (year % 400 == 0)))
};
//console.log(leapYears(2004));
// Do not edit below this line
module.exports = leapYears;
