var writtenExtras = "";

function CalcularPuntual() {
    var hours = $("#hours").val(); //pendiente
    hours = parseInt(hours);
    var basePrecio = 13;
    var kms = $("#distancia").val();
    kms = kms.replace("km", "");
    kms = kms.replace(",", ".");
    kms = parseFloat(kms);

    var provinceCost = 0;
    var provinceName = $("#provinceName").val().trim();
    $.get("http://backend.foxclean.es/api/presupuestos/CostoDesplazamientoprov/?provincia=" + provinceName,
        function (data) {
            provinceCost = 4;
            for (let i = 0; i < data.length; i++) {
                const element = data[i];
                const desde = element.Desde;
                const hasta = element.Hasta;
                if (kms >= desde && kms <= hasta) {
                    provinceCost = element.Desplazamiento;
                    basePrecio = element.PrecioHora;
                }
            }

            var subTotal = hours * basePrecio;
            $("#totalPerHours").text(subTotal.toFixed(2) + " €")
            $("#provinceCost").text(provinceCost.toFixed(2) + " €");

            var leaderPrice = 25;
            var vacuumPrice = 25;
            var equipmentPrice = 20;
            var needsLeader = $("#leader").is(":checked");
            var needsVacuum = $("#vacuum").is(":checked");
            var needsEquipment = $("#basicEquipment").is(":checked");

            var total = 0;
            total = total + subTotal + provinceCost;
            writtenExtras = "";
            //Descuento si tiene las 2
            if (needsLeader && needsVacuum) {
                leaderPrice = 20;
                vacuumPrice = 20;
            } else {
                leaderPrice = 25;
                vacuumPrice = 25;
            }
            if (needsLeader) {
                $("#leaderPrice").removeClass("muted");
                total = total + leaderPrice;
                writtenExtras = writtenExtras + "Escalera: " + leaderPrice + "\n";
            } else {
                $("#leaderPrice").addClass("muted");
            }
            if (needsEquipment) {
                $("#basicEquipmentPrice").removeClass("muted");
                total = total + equipmentPrice;
                writtenExtras = writtenExtras + "Equipo Básico: " + equipmentPrice + "\n";
            } else {
                $("#basicEquipmentPrice").addClass("muted");
            }
            if (needsVacuum) {
                $("#vacuumPrice").removeClass("muted");
                total = total + vacuumPrice;
                writtenExtras = writtenExtras + "Aspiradora: " + vacuumPrice + "\n";
            } else {
                $("#vacuumPrice").addClass("muted");
            }
            $("#leaderPrice").text(leaderPrice.toFixed(2) + " €");
            $("#vacuumPrice").text(vacuumPrice.toFixed(2) + " €");
            $("#total").text(total.toFixed(2) + " €");
        })
}

var othersControl = $("#others");
othersControl.click(function () {
    if (othersControl.is(":checked")) {
        $("#othersText").slideDown();
        $("#othersText").focus();
    } else {
        $("#othersText").slideUp();
    }
});

$(document).ready(
    function () {
        $(".get_map")
            .click(
                () => {
                    setTimeout(function () {
                        CalcularPuntual(); 
                    }, 1000)
                }
            );

        $("#geomap")
            .mouseup(
                () => {
                    // if ($("#distancia").val() != "") {
                    setTimeout(function () {
                        CalcularPuntual()
                    }, 500)
                    // }
                }
            );

        $(".check").click(
            () => {
                CalcularPuntual();
            }
        );

        var _d = new Date();
        var yy = _d.getFullYear();
        var mm = _d.getMonth() + 1;
        var dd = _d.getDay() + 1;

        if (mm < 10) {
            mm = "0" + mm
        }
        if (dd < 10) {
            dd = "0" + dd
        }

        $("#myDate").val(yy + "-" + mm + "-" + dd);
        var hh = _d.getHours();
        var min = _d.getMinutes();
        if (hh < 10) {
            hh = "0" + hh
        }
        if (min < 10) {
            min = "0" + min
        }
        $("#myTime").val(hh + ":" + min);
    }
);

function PuntualSend() {
    if ($("#direccion").val() != "") {
        if (isValid()) {
            $("#pacifier").show("slow");

            if ($("#othersText").val() != "") {
                writtenExtras = writtenExtras + "Otros: " + $("#othersText").val() + "\n\r";
            }
            $.post("http://backend.foxclean.es/api/Clientes/Peticion/", {
                    NOMBRE: $("#name").val(),
                    CIUDAD: $("#direccion").val(),
                    TELEFONO: $("#telephone").val(),
                    MAIL: $("#email").val(),
                    FCHA: new Date(),
                    PETICION: "SERLAUX - PRESUPUESTO PUNTUAL \n\r" + $("#message").val() +
                        "\n\r" + "Fecha del servicio: " + $("#myDate").val() +
                        "\n\r" + "Hora: " + $("#myTime").val() +
                        "\n" + $("#hours").val() + " horas de trabajo solicitadas: " + $("#totalPerHours").text() +
                        "\n" + "Costo por desplazamiento: " + $("#provinceCost").text() +
                        "\n\r" + "EXTRAS: - - " + "\n" + writtenExtras +
                        "\n" + "Importe Total: " + $("#total").text()
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
    } else {
        alert("Por favor, indique su dirección.")
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