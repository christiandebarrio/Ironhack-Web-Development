var map;
window.localStorage.getItem("mark1")

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
  setupAutocomplete();
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
  loadPositions();
}
function createMarker(position) {
  var market = new google.maps.Marker({
    position: position,
    map: map
  });  
}

function savePositions (position) {
  var saved_positions;
  if(savedPositions) {
    saved_ositions.push(position);
  } else{
    saved_positions = []
  }

  window.localStorage.setItem("positions", savedPositions);
}

function loadPositions () {
  // var positions = window.localStorage.getItem("positions");

  // positions.forEach (function (position) {
  //   createMarker(position);
  // });

}

function setupAutocomplete() {
  var input = $('#get-places')[0];
  var autocomplete = new google.maps.places.Autocomplete(input);
  autocomplete.addListener('place_changed', function(){
    var place = autocomplete.getPlace();
    if (place.geometry.location) {
      map.setCenter(place.geometry.location);
      map.setZoom(17);
    } else {
      alert("The place has no location...?")
    }
    createMarker(place.geometry.location);
    savePositions(place.geometry.location);
  });
}