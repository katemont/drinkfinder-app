function detectBrowser() {
  var useragent = navigator.userAgent;
  var mapdiv = document.getElementById("map-canvas");

  if (useragent.indexOf('iPhone') != -1 || useragent.indexOf('Android') != -1 ) {
    mapdiv.style.width = '100%';
    mapdiv.style.height = '100%';
  } else {
    mapdiv.style.width = '600px';
    mapdiv.style.height = '800px';
  }
}

var myMap = myMap || {},
map = {},
marker = {};
popup = {}
style = [
    {"stylers": [
            {"saturation": -100},
            {"gamma": 0.8},
            {"lightness": 4},
            {"visibility": "on"}
        ]
    },
    {"featureType": "landscape.natural",
        "stylers": [
            {"visibility": "on"},
            {"color": "#FFFFFF"},
            {"gamma": 4.97},
            {"lightness": -5},
            {"saturation": 100
            }
        ]
    }
]

myMap.initialize = function() {

  var mapOptions = {
    center: { lat:  51.52, lng: -0.115},     
    zoom: 14,
    mapTypeId:google.maps.MapTypeId.ROADMAP,
    styles: style,
    scrollwheel: false
  };

  var mapCanvas = $('#map-canvas')[0];

  map = new google.maps.Map(mapCanvas, mapOptions);

  var markerOptions = {
    position: new google.maps.LatLng(51.53, -0.109446),
    map: map
  };

  marker = new google.maps.Marker(markerOptions);

  popup = new google.maps.InfoWindow(infoWindowOptions);

  google.maps.event.addListener(marker, 'click', function(){
    popup.open(map, marker);
  });
  $('#locate').on('click', function(){
      // console.log('click');
      $(this).text('loading...');

      if (navigator.geolocation){
        navigator.geolocation.getCurrentPosition(successCallback, errorCallback);
      } else {
        alert("Your browser doesn't support geolocation");
      };
    });

  var autocomplete = new google.maps.places.Autocomplete($('#autocomplete')[0]);
  autocomplete.bindTo('bounds',map);

  google.maps.event.addListener(autocomplete, 'place_changed', function(){

    popup.close(); 

    var place = autocomplete.getPlace();

    if (typeof place !== undefined) {
      if (place.geometry.viewport) {
        map.fitBounds(place.geometry.viewport); 
      } else {
        map.setCenter(place.geometry.location);
        map.setZoom(17);
      };

      marker.setPosition(place.geometry.location);
      
      popup.setContent('<div>'+ place.name +'</div>');

      popup.open(map, marker);
      
      console.log(place.name)
      $('input#name').val(place.name);

    } else {
      console.log("Can't find place");
    }
    
  });
}

var infoWindowOptions = {
 content: 'You.',
};

function successCallback(position){
 console.log(position);
 
 var latlng = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
 console.log(latlng);

   // changing position of the existing marker:
   marker.setPosition(latlng);
   map.setCenter(latlng);
   map.setZoom(18);
   // popup.setContent('You are here!');
   // popup.open(map, marker);
   $('#locate').text('locate me');
 };

 function errorCallback(error){
   console.log();
   alert('Could not retrieve your location, please try again');
 };

 google.maps.event.addDomListener(window, 'load', myMap.initialize);