console.log("Hello world")

function eat (food) {

  if(food === "Pizza") {
    console.log("Yay pizza");
  }
  else if(food === "Cookies") {
    console.log("Cookies are good too");
  }
  else if(food === "Brussel Sprouts") {
    console.log("Ok, enjoy eating Brussel Sprouts...");
  }
}

eat("Pizza");

eat("Cookies");

eat("Brussel Sprouts");

//-------------------

var numbers = "80:70:90:100";

function averageColon (numbers) {
  var ar_numbers = numbers.split(":");
  var total = 0;

  ar_numbers.forEach(function(number) {
    total = total + parseInt(number);
  });
  
  return total/ar_numbers.length;
}

console.log(averageColon(numbers));

//-------------------

var x = 5;

function three() {
  console.log(x);
}

function four() {
  x = 4;
  console.log(x);
}

four(); // return 4
three(); // return 4

//-------------------

function five() {
  var y = 5;
  console.log(y);
}

five();

//-------------------

function ticketBuilder(transport) {
  return function(name) {
    console.log("Wellcome, " + name + ". Here is your ticket for the " + transport + "!");
  }
}

var getPlaneTicket = ticketBuilder("plane");
var getTrainTicket = ticketBuilder("train");

getPlaneTicket("John");
getTrainTicket("Peter");

//-------------------

// import and export file in node

//en el js 
module.exports = MyApp;

//en el server (node)
var anApp = require('./prueba.js');