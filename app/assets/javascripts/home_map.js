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

myMap.initialize = function(){

  var mapOptions = {
    center: { lat: 51.52, lng: -0.115 }, 
    zoom: 14, 
    mapTypeId: google.maps.MapTypeId.ROADMAP, 
    styles: style,
    scrollwheel: false,
    zoomControl: false
  };

  var homemapCanvas = $('#homemap-canvas')[0];
  var map = new google.maps.Map(homemapCanvas, mapOptions);

  $.get('/bars.json').success(function(barsData) {
    $bars = $(barsData);
    $bars.each(function(index, bar) {
      var markerOptions = {
        position: new google.maps.LatLng(bar.latitude, bar.longitude),
        map: map
      }
      
      var marker = new google.maps.Marker(markerOptions);

      var infoWindowOptions = {
        content: bar.name }

        var infoWindow = new google.maps.InfoWindow(infoWindowOptions);

        google.maps.event.addListener(marker, 'click', function(){
          infoWindow.open(map, marker);

        });

      });
  })


}

google.maps.event.addDomListener(window, 'load', myMap.initialize);
