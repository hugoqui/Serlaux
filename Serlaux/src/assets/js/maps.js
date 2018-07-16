var geocoder;
var map;
var marker;
var initialLat = $('.search_latitude').val();
var initialLong = $('.search_longitude').val();

/*
 * Google Map with marker
 */
function initialize() {
    initialLat = initialLat ? initialLat : 14.6349149;
    initialLong = initialLong ? initialLong : -90.5068824;

    var latlng = new google.maps.LatLng(initialLat, initialLong);
    var options = {
        zoom: 16,
        center: latlng,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };

    map = new google.maps.Map(document.getElementById("geomap"), options);
    geocoder = new google.maps.Geocoder();
    marker = new google.maps.Marker({
        map: map,
        draggable: true,
        position: latlng
    });

    google.maps.event.addListener(marker, "dragend", function () {
        var point = marker.getPosition();
        map.panTo(point);
        geocoder.geocode({
            'latLng': marker.getPosition()
        }, function (results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
                map.setCenter(results[0].geometry.location);
                marker.setPosition(results[0].geometry.location);
                $('.search_addr').val(results[0].formatted_address);
                $('.search_latitude').val(marker.getPosition().lat());
                $('.search_longitude').val(marker.getPosition().lng());

                myLatitude = $('.search_latitude').val().trim();
                myLatitude = parseFloat(myLatitude);
                myLongitude = $('.search_longitude').val().trim();
                myLongitude = parseFloat(myLongitude);
                CalculateRoutes();
                $("#quoteTable").fadeOut();
            }
        });
    });

}

$(document).ready(function () {
    initialLat = myLatitude;
    initialLong = myLongitude;
    initialize();
});