
var myLatitude;
var myLongitude;

function ShareLocation() {        
    $('#direccion').text('Obteniendo ubicación...');
    if ('geolocation' in navigator) { // check geolocation available 
        // try to get user current location using getCurrentPosition() method            
        navigator.geolocation.getCurrentPosition(function(position) {
            myLatitude = position.coords.latitude;
            myLongitude = position.coords.longitude;                   
            console.log(myLatitude, myLongitude);
            
            CalculateRoutes();
            GetAddress();
        });
    } else {
        console.log('Browser doesnt support geolocation!');
        alert('Su navegador no soporta la geolocalizacion.')
    }
}

function AlertLocation() {        
    if ('geolocation' in navigator) { // check geolocation available 
        // try to get user current location using getCurrentPosition() method            
        navigator.geolocation.getCurrentPosition(function(position) {
            myLatitude = position.coords.latitude;
            myLongitude = position.coords.longitude;                   
            alert(myLatitude + ', ' + myLongitude);
        });
    } else {
        console.log('Browser doesnt support geolocation!');
        alert('Su navegador no soporta la geolocalizacion.')
    }
}

function  CalculateRoutes() {    
    var directionsService = new google.maps.DirectionsService();    
    var boudha = new google.maps.LatLng(40.4163554, -3.7046296999999413);
    // var hattisar = new google.maps.LatLng(myLatitude, myLongitude);
    var hattisar = new google.maps.LatLng(40.4530541, -3.688344499999971);
    var request = {
        origin: boudha,
        destination: hattisar,
        travelMode: 'DRIVING'
    };

    directionsService.route(request, function(result, status){
        console.log(result, status);
        if(status=="OK"){                
            var kms = result.routes[0].legs[0].distance.text;
            $("#distancia").val(kms);
            console.log(kms);
            // alert(kms)
        } else {
            alert('Su ubicación, está fuera de rango para nuestros servicios. \n Puede hablar con alguno de nuestros asesores.')
        }
    });
}

function GetAddress() {
    var geocoder = new google.maps.Geocoder;
    var latlng = {lat: 40.4530541, lng: -3.688344499999971};        
    //var latlng = {lat: myLatitude, lng: myLongitude};
    console.log(latlng);

    geocoder.geocode({'location': latlng}, function(results, status) {
        if (status === 'OK') {
        if (results[0]) {
            
            var address = results[0].formatted_address;
            $('#direccion').text(address);

            console.log(address);
        } else {
            window.alert('No results found');
        }
        } else {
        window.alert('Geocoder failed due to: ' + status);
        }
    
    });
}