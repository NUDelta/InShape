//Parse Initialization
Parse.initialize("vzGQAlYrtQnrSlzIJm2su5wLoXtm6d2koA6rXF0S", "IkQvmQnneEaepyFYguHoa6ozNYugGJlMeiFBuJIT");

//Google Maps Initialization
function initialize() {
    var mapOptions = {
      zoom: 15
    };
    var map = new google.maps.Map(document.getElementById('map-canvas'),
        mapOptions);

    //Get Current Location
    if(navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function(position) {
      var pos = new google.maps.LatLng(position.coords.latitude,
                                       position.coords.longitude);

      //Place Marker
      var marker = new google.maps.Marker({
        position: pos,
        map: map,
        title: 'You are here.'
      });

      //Store Location in Parse
      var CurrentLocation = Parse.Object.extend("CurrentLocation");
      var currentLocation = new CurrentLocation();
      currentLocation.save(
        { User: "Leesha",
          Lat: position.coords.latitude,
          Long: position.coords.longitude
        }
      );

      map.setCenter(pos);
    }, function() {
      handleNoGeolocation(true);
    });
  } else {
    // Browser doesn't support Geolocation
    handleNoGeolocation(false);
  }
}

function handleNoGeolocation(errorFlag) {
  if (errorFlag) {
    var content = 'Error: The Geolocation service failed.';
  } else {
    var content = 'Error: Your browser doesn\'t support geolocation.';
  }

  var options = {
    map: map,
    position: new google.maps.LatLng(42.058, -87.682),
    content: content
  };

  var infowindow = new google.maps.InfoWindow(options);
  map.setCenter(options.position);
}

google.maps.event.addDomListener(window, 'load', initialize);


