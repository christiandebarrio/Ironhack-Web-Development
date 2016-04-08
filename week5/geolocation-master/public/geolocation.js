var map;
var savedPositions;
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

function savePosition(position) { 
  if(savedPositions) {
    savedPositions.push(position);
  } else{
    savedPositions = [];
    savedPositions.push(position);
  }

  window.localStorage.setItem("positions", JSON.stringify(savedPositions));
}

function loadPositions () {
  savedPositions = JSON.parse(window.localStorage.getItem("positions"));

  savedPositions.forEach(function(position) {
    createMarker(position);
  });

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
    savePosition(place.geometry.location);
  });
}