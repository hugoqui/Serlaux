var myLatitude = 40.4163554;
var myLongitude = -3.7046296999999413;

function ShareLocation() {
    $('#direccion').val('Obteniendo ubicación...');
    if ('geolocation' in navigator) { // check geolocation available 
        // try to get user current location using getCurrentPosition() method            
        navigator.geolocation.getCurrentPosition(function (position) {
            // myLatitude = 40.5963643;
            // myLongitude = -3.5081019000000424;                   
            myLatitude = position.coords.latitude;
            myLongitude = position.coords.longitude;

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
        navigator.geolocation.getCurrentPosition(function (position) {
            myLatitude = position.coords.latitude;
            myLongitude = position.coords.longitude;
            alert(myLatitude + ', ' + myLongitude);
        });
    } else {
        console.log('Browser doesnt support geolocation!');
        alert('Su navegador no soporta la geolocalizacion.')
    }
}

function CalculateRoutes() {
    var directionsService = new google.maps.DirectionsService();
    var centroMadrid = new google.maps.LatLng(40.4163554, -3.7046296999999413); //Este es el centro de madrid
    var hattisar = new google.maps.LatLng(myLatitude, myLongitude);

    console.log('mylatitude es: ', myLatitude);
    console.log('mylongitud es: ', myLongitude);
    //var hattisar = new google.maps.LatLng(41.380896, 2.12282);
    var request = {
        origin: centroMadrid,
        destination: hattisar,
        travelMode: 'DRIVING'
    };

    directionsService.route(request, function (result, status) {
        console.log('Resultado y estado');
        console.log(result, status);
        if (status == "OK") {
            var kms = result.routes[0].legs[0].distance.text;
            if (true) { //   parseInt(kms) <= 50) {          
                console.log(kms);
                console.log(parseInt(kms));
                $("#distancia").val(kms);
            } else {
                //alert('Su ubicación, está fuera de rango para nuestros servicios. \n Puede hablar con alguno de nuestros asesores.')
            }
        } else {
            //alert('Su ubicación, está fuera de rango para nuestros servicios. \n Puede hablar con alguno de nuestros asesores.')
        }
    });
}

function GetAddress() {
    var geocoder = new google.maps.Geocoder;
    //var latlng = {lat: 41.380896, lng: 2.12282};        
    var latlng = {
        lat: myLatitude,
        lng: myLongitude
    };
    console.log(latlng);

    geocoder.geocode({
        'location': latlng
    }, function (results, status) {
        if (status === 'OK') {
            if (results[0]) {

                var address = results[0].formatted_address;

                map.setCenter(results[0].geometry.location);
                marker.setPosition(results[0].geometry.location);

                $('#direccion').val(address);
                $('.search_latitude').val(myLatitude);
                $('.search_longitude').val(myLongitude);

                console.log(address);
            } else {
                window.alert('No results found');
            }
        } else {
            window.alert('Geocoder failed due to: ' + status);
        }

    });
}

// ShareLocation();


/*
 * autocomplete location search
 */
var PostCodeid = '#search_location';
$(function () {
    $(PostCodeid).autocomplete({
        source: function (request, response) {
            geocoder.geocode({
                'address': request.term
            }, function (results, status) {
                response($.map(results, function (item) {
                    return {
                        label: item.formatted_address,
                        value: item.formatted_address,
                        lat: item.geometry.location.lat(),
                        lon: item.geometry.location.lng()
                    };
                }));
            });
        },
        select: function (event, ui) {
            $('.search_addr').val(ui.item.value);
            $('.search_latitude').val(ui.item.lat);
            $('.search_longitude').val(ui.item.lon);
            var latlng = new google.maps.LatLng(ui.item.lat, ui.item.lon);
            marker.setPosition(latlng);
            initialize();
        }
    });
});

/*
 * Point location on google map
 */
$('.get_map').click(function (e) {
    var address = $(PostCodeid).val();
    geocoder.geocode({
        'address': address
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
            $('#search_location').val('');
        } else {
            alert("Geocode was not successful for the following reason: " + status);
        }
    });
    e.preventDefault();
});

//Add listener to marker for reverse geocoding
google.maps.event.addListener(marker, 'drag', function () {
    geocoder.geocode({
        'latLng': marker.getPosition()
    }, function (results, status) {
        if (status == google.maps.GeocoderStatus.OK) {
            if (results[0]) {
                $('.search_addr').val(results[0].formatted_address);
                $('.search_latitude').val(marker.getPosition().lat());
                $('.search_longitude').val(marker.getPosition().lng());

                myLatitude = $('.search_latitude').val().trim();
                myLatitude = parseFloat(myLatitude);
                myLongitude = $('.search_longitude').val().trim();
                myLongitude = parseFloat(myLongitude);
                CalculateRoutes();
            }
        }
    });
});




function CondoSend() {
    if (isValid()) {
        $("#pacifier").show("slow");
        $.post("http://backend.foxclean.es/api/Clientes/Peticion/", {
                NOMBRE: $("#name").val(),
                CIUDAD: $("#direccion").val(),
                TELEFONO: $("#telephone").val(),
                MAIL: $("#email").val(),
                FCHA: new Date(),
                PETICION: "SERLAUX - PRESUPUESTO PARA COMUNIDADES \n\r" + $("#message").val() +
                    "\n" + "Numero de viviendas: " + $("#houses").val() +                    
                    "\n\r" + "Numero de ventanas : " + $("#windows").val() +
                    "\n\r" + "Dias de la semana que desea el servicio: " + writtenDays + " - Total (" + $("#days").val() + " dias) " +
                    "\n" + "Hora: " + $("#myTime").val() +
                    "\n\r" + "Precio por Hora: " + $("#priceHour").text() +
                    "\n\r" + "Importe Mensual: " + $("#total").text()
            },
            function (data, status) {
                if (data == "ok" && status == "success") {
                    alert("Muchas gracias por contactarnos. \nEn breve un asesor lo contactará.");
                    location.reload();
                } else {
                    alert("error, intente nuevamente");
                }
            });

    }
}

function isValid() {
    var errMsg = "";
    var name = $("#name").val();
    if (name == null || name == "") {
        errMsg = "Por favor, indique su nombre. \n";
    }
    var email = $("#email").val();
    if (email == null || name == "") {
        errMsg = errMsg + "Por favor, indique su correo electrónico. \n";
    }
    var telephone = $("#telephone").val();
    if (telephone == null || telephone == "") {
        errMsg = errMsg + "Por favor, indique su número telefónico. \n";
    }

    if (errMsg != "") {
        alert(errMsg);
        return false;
    } else {
        return true;
    }
}