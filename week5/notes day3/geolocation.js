if ("geolocation" in navigator) {
  console.log("geolocation is available!")
} else {
  console.log("geolocation in NOT available")
}


function onLocation (position) {
  console.log('Your latitude is: ' + position.coords.latitude);
  console.log('Your longitude is: ' + position.coords.longitude);

  var urlRoot = "https://maps.googleapis.com/maps/api/staticmap?markers=|label:I|";
  var urlParams = "&zoom=16&size=500x400";
  var lat = position.coords.latitude;
  var lon = position.coords.longitude;
  var url = urlRoot + lat + "," + lon + urlParams;

  document.getElementById('map').innerHTML = '<img src="' + url + '">'
}

function onError (error) {
  // delivers an error object with information about error
  console.log(error);
}

var options = {
  enableHighAccuracy: true // more accuraten position, takes longer
}

// navigator.geolocation.getCurrentPosition(onLocation, onError, options);

var watchID = navigator.geolocation.watchPosition(onLocation, onError, options);
