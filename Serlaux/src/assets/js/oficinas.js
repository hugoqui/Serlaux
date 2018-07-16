function PrintQuote() {
    Calculate();
    window.print();
}

function Calculate() {
    var dailyHours = 1; //pendiente
    var stations = $('#stations').val() / 10;
    var bathrooms = $('#bathrooms').val() / 10;
    var windows = $('#windows').val() / 40;
    var sum = stations + bathrooms + windows;
    var basePrecio = 9;
    if (sum < 1) {
        dailyHours = 1;
    } else {
        var _int = Math.trunc(sum);
        var _dec = sum - _int;

        if (_dec == 0) { //no decimals
            dailyHours = sum;
        } else {
            if (_dec < 0.5) {
                dailyHours = _int;
            } else {
                dailyHours = _int + 0.5;
            }
        }
    }

    var kms = $('#distancia').val();
    kms = kms.replace('km', '');
    kms = kms.replace(',', '.');
    kms = parseFloat(kms);
    const provinceName = $("#provinceName").val().trim();

    $.get("http://localhost:61856/api/values?provincia=" + provinceName,

        function (data) {
            provinceCost = 0;

            for (let i = 0; i < data.length; i++) {
                const element = data[i];
                const desde = element.Desde;
                const hasta = element.Hasta;

                if (kms >= desde && kms <= hasta) {
                    provinceCost = element.Desplazamiento;
                    basePrecio = element.PrecioHora;
                }
            }

            if (provinceCost > 0) {
                var finalHourRate = ((basePrecio * dailyHours) + provinceCost) / dailyHours;
                var weekDays = $("#days").val();
                var weekHours = weekDays * dailyHours;
                var weekTotal = weekHours * finalHourRate;
                var total = weekTotal * 4.34;
                $(".dias").text(weekDays);
                $(".horas").text(dailyHours);
                $("#totalHoras").text(dailyHours);
                $("#precioHora").text(finalHourRate.toFixed(2) + " €");
                $("#totalSemanal").text(weekTotal.toFixed(2) + " €");
                $("#totalMensual").text(total.toFixed(2) + " €");
                $("#quoteTable").fadeIn(1000);
                //$("#quoteTable").removeClass("hidden");    
            } else {
                alert('Su ubicación, está fuera de rango para nuestros servicios. \n Puede hablar con alguno de nuestros asesores.')
            }
        }
    )




}

function OfficeSend() {
    if (isValid()) {
        $("#pacifier").show("slow");
        $.post("http://backend.foxclean.es/api/Clientes/Peticion/", {
                NOMBRE: $("#name").val(),
                CIUDAD: $("#direccion").val(),
                TELEFONO: $("#telephone").val(),
                MAIL: $("#email").val(),
                FCHA: new Date(),
                PETICION: "SERLAUX - PRESUPUESTO PARA OFICINAS \n\r" + $("#message").val() +
                    "\n" + "Numero de puestos de trabajo: " + $("#stations").val() +
                    "\n" + "Numero de aparatos sanitarios: " + $("#bathrooms").val() +
                    "\n\r" + "Numero de ventanas : " + $("#windows").val() +
                    "\n\r" + "Dias de la semana que desea el servicio: " + writtenDays + " - Total (" + $("#days").val() + " dias) " +
                    "\n" + "Hora: " + $("#myTime").val() +
                    "\n\r" + "Precio por Hora: " + $("#precioHora").text() +
                    "\n\r" + "Importe Mensual: " + $("#totalMensual").text()
            },
            function (data, status) {
                if (data == "ok" && status == "success") {
                    alert("Muchas gracias por contactarnos. \nEn breve un asesor le llamará.");
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

var writtenDays = "";

$(document).ready(
    function () {
        $(".daysCheckbox").click(
            () => {
                writtenDays = "";
                var days = 0;
                if ($("#mondayBox").is(":checked")) {
                    days = days + 1;
                    writtenDays = "Lunes, ";
                }

                if ($("#tuesdayBox").is(":checked")) {
                    days = days + 1;
                    writtenDays = writtenDays + "Martes, ";
                }

                if ($("#wednesdayBox").is(":checked")) {
                    days = days + 1;
                    writtenDays = writtenDays + "Miercoles, ";
                }

                if ($("#thursdayBox").is(":checked")) {
                    days = days + 1;
                    writtenDays = writtenDays + "Jueves, ";
                }

                if ($("#fridayBox").is(":checked")) {
                    days = days + 1;
                    writtenDays = writtenDays + "Viernes, ";
                }

                if ($("#saturdayBox").is(":checked")) {
                    days = days + 1;
                    writtenDays = writtenDays + "Sabado, ";
                }

                if ($("#sundayBox").is(":checked")) {
                    days = days + 1;
                    writtenDays = writtenDays + "Domingo, ";
                }

                if (days == 0) {
                    days = 1
                }
                $("#days").val(days);
            }
        );
    }
);