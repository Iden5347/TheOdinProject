const convertToCelsius = function(fTemp) {
  return Math.round(((fTemp - 32) * 5/9) * 10) / 10;
};

const convertToFahrenheit = function(cTemp) {
  return Math.round((cTemp * 9/5 + 32) * 10) / 10;
};
//console.log(convertToCelsius(32));
// Do not edit below this line
module.exports = {
  convertToCelsius,
  convertToFahrenheit
};
