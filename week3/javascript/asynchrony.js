function shout () {
  console.log('Ahhhh!');
}

function sleep (time, callback) {
  setTimeout(callback, time * 1000);
}

sleep(2, shout);

// for(var i = 0; i < seconds; i++){

// }