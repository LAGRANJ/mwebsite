
var ready = function(){
  var map;
  var current_lat=0;
  var current_lng=0;
  function initMap() {
    var mapOptions = {
      zoom: 16
    }
    map = new google.maps.Map(document.getElementById("map"), mapOptions);
    google.maps.event.clearListeners(map);
    google.maps.event.addListener(map, 'tilesloaded', function(){
      $("#spinner").hide();
    });
  }

  $('#modal_gmap').modal();
  $(".modal_gmap_trigger").click(function(event)
      {
        if(current_lat!=$(this).attr('lat')||(current_lng!=$(this).attr('lng')))
        {
          $("#spinner").show();
          current_lat=$(this).attr('lat');
          current_lng=$(this).attr('lng');
        }
        if(map==null) initMap();
        var myLatlng = new google.maps.LatLng($(this).attr('lat'),$(this).attr('lng'));
        map.setCenter(myLatlng);
        var marker = new google.maps.Marker({
          position: myLatlng,
          title:"Hello World!"
        });
        marker.setMap(map);
        $('#modal_gmap').modal("open");
      }
      );
};
$(document).ready(ready);
