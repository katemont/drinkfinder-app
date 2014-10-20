var myMap = myMap || {},
    map = {},
    marker = {};

myMap.initialize = function() {

    var mapOptions = {
        center: { lat:  51.52, lng: -0.115},     
        zoom: 14,
        mapTypeId:google.maps.MapTypeId.ROADMAP
    };

    var mapCanvas = $('#map-canvas')[0];

    map = new google.maps.Map(mapCanvas, mapOptions);

    var markerOptions = {
      position: new google.maps.LatLng(51.53, -0.109446),
      map: map
    };

    marker = new google.maps.Marker(markerOptions);

    $('#locate').on('click', function(){
      console.log('click');
      $(this).text('loading...');

      if (navigator.geolocation){
        navigator.geolocation.getCurrentPosition(successCallback, errorCallback);
      } else {
        alert("Your browser doesn't support geolocation");
      };
    });
}

// setTimeout(function(){
//   map.setCenter(marker.getPosition());
// }, 5000);
 
 

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