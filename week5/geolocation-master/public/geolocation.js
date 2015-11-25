var map;

if ("geolocation" in navigator){
  navigator.geolocation.getCurrentPosition(onLocation, onError);
}

function onLocation(position){
  // We can't just directly feed the position into our google map
  // The objects are formatted differently, google maps is looking for
  // an object with "lat" and "lng" keys.
  var myPosition = {
    lat: position.coords.latitude,
    lng: position.coords.longitude
  };

  createMap(myPosition);
}

function onError(err){
  console.log("What are you using, IE 7??", err);
}

function createMap(position){
  var mapOptions = {
    center: position,
    zoom: 17
  };
  map = new google.maps.Map($('#map')[0], mapOptions);
  createMarker(position);
}
function createMarker(position) {
  var market = new google.maps.Marker({
    position: position,
    map: map
  });
}