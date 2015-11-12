var Car = function (model, noise) {
  var wheels = 4; //cannot acces from outside
  this.wheels = 4; //can access from outside
  this.model = model;
  this.noise = noise;
}

Car.prototype.makeNoise = function () {
  console.log(this.noise)
};

var ford = new Car("Ford", "Buuuuum");
var seat = new Car("Seat", "Baaa");

ford.makeNoise();
seat.makeNoise();

console.log(seat.wheels);
