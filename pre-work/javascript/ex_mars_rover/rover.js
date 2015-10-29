var rover1 = {
  name: 'rover1',
  position: [0,0], 
  direction: 'N'
};
var rover2 = {
  name: 'rover2',
  position: [9,9], 
  direction: 'N'
};
var roverPrincipal;
var roverOther;

var grid = [0,9,0,9]; // grid = [y min, y max, x min, x max]

var directionCommands = [];

var obstacle = {
  name: 'obstacle1',
  position: [1,1]
};

function limitUp() {
  'use strict';
  if(roverPrincipal.position[0] > grid[1]) {
    roverPrincipal.position[0] = grid[0];
  };
}

function limitRight() {
  'use strict';
  if(roverPrincipal.position[1] > grid[3]) {
    roverPrincipal.position[1] = grid[2];
  };
}

function limitDown() {
  'use strict';
  if(roverPrincipal.position[0] < grid[0]) {
    roverPrincipal.position[0] = grid[1];
  };
}

function limitLeft() {
  'use strict';
  if(roverPrincipal.position[1] < grid[2]) {
    roverPrincipal.position[1] = grid[3];
  };
}

function goForward() {
  'use strict';
  switch(roverPrincipal.direction) {
    case 'N':
      roverPrincipal.position[0]++;
      limitUp(roverPrincipal);
      break;
    case 'E':
      roverPrincipal.position[1]++;
      limitRight(roverPrincipal);
      break;
    case 'S':
      roverPrincipal.position[0]--;
      limitDown(roverPrincipal);
      break;
    case 'W':
      roverPrincipal.position[1]--;
      limitLeft(roverPrincipal);
      break;
  };

  preventBump();

  console.log("Go forward.\nNew Rover Position: [" + roverPrincipal.position[0] + ", " + roverPrincipal.position[1] + "]")
}

//goForward();

function goBack() {
  'use strict';
  switch(roverPrincipal.direction) {
    case 'N':
      roverPrincipal.position[0]--;
      limitDown(roverPrincipal);
      break;
    case 'E':
      roverPrincipal.position[1]--;
      limitLeft(roverPrincipal);
      break;
    case 'S':
      roverPrincipal.position[0]++;
      limitUp(roverPrincipal);
      break;
    case 'W':
      roverPrincipal.position[1]++;
      limitRight(roverPrincipal);
      break;
  };

  preventBump();

  console.log("Go back.\nNew Rover Position: [" + roverPrincipal.position[0] + ", " + roverPrincipal.position[1] + "]")
}

//goBack();

function turnRight() {
  'use strict';
  switch(roverPrincipal.direction) {
    case 'N':
      roverPrincipal.direction = 'E'
      break;
    case 'E':
      roverPrincipal.direction = 'S'
      break;
    case 'S':
      roverPrincipal.direction = 'W'
      break;
    case 'W':
      roverPrincipal.direction = 'N'
      break;
  };

  console.log("Turn right.\nNew Rover Direction: " + roverPrincipal.direction)
}

//turnRight();

function turnLeft() {
  'use strict';
  switch(roverPrincipal.direction) {
    case 'N':
      roverPrincipal.direction = 'W'
      break;
    case 'E':
      roverPrincipal.direction = 'N'
      break;
    case 'S':
      roverPrincipal.direction = 'E'
      break;
    case 'W':
      roverPrincipal.direction = 'S'
      break;
  };

  console.log("Turn left.\nNew Rover Direction: " + roverPrincipal.direction)
}

//turnLeft();

function preventBump() {
  'use strict';
  if(roverPrincipal.position[0] === obstacle.position[0] && roverPrincipal.position[1] === obstacle.position[1]) {
    alert('Stop or you will bump! Obstacle is in your way.')
  } else if(roverPrincipal.position[0] === roverOther.position[0] && roverPrincipal.position[1] === roverOther.position[1]) {
    alert('Stop or you will bump! Other Rover is in your way.')
  }
}

function selectRover() {
  'use strict';
  var numRover = Number(prompt('Wich Rover do you want to manage: 1 or 2?'));
  switch(numRover) {
    case 1:
      roverPrincipal = rover1;
      roverOther = rover2;
      break;

    case 2:
      roverPrincipal = rover2;
      roverOther = rover1;
      break;

    default:
      alert('Maybe you make a mistake. You have to chose between Rover 1 or 2')
      return selectRover();
      break;
  };
  console.log('You have selected '+ roverPrincipal.name + '\nInitial Rover Position: [' + roverPrincipal.position[0] + ', ' + roverPrincipal.position[1] + ']');
}

function insertCommands() {
  'use strict';
  var commands = prompt('Write the direction\'s commands:');
  directionCommands = commands.toLowerCase().split('');
  convertCommands(directionCommands);
}

function convertCommands(commandsArray) {
  'use strict';
  for(var index = 0; index < commandsArray.length; index++) {
    switch(commandsArray[index]) {
      case 'f':
        console.log(commandsArray[index])
        goForward(roverPrincipal);
        break;
      case 'b':
        console.log(commandsArray[index])
        goBack(roverPrincipal);
        break;
      case 'r':
        console.log(commandsArray[index])
        turnRight(roverPrincipal);
        break;
      case 'l':
        console.log(commandsArray[index])
        turnLeft(roverPrincipal);
        break;
      default:
        alert('The commandsArray are not correct. You have to use F,B,R or L');
        return insertCommands();
        break;
    };
  };
}

function move() {
  selectRover();
  insertCommands();
}

move();