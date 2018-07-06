function CalcularPuntual() {
    alert("No pos si");

    var hours = $("#horas").val(); //pendiente
    hours = parseInt(hours);

    var kms = $("#distancia").val();
    kms = kms.replace("km", "");
    kms = kms.replace(",", ".");
    kms = parseFloat(kms);

    var provinceCost = 4;
    switch (true) {
        case kms < 20:
            provinceCost = 4;
            break;
        case kms < 30:
            provinceCost = 5;
            break;
        case kms < 40:
            provinceCost = 6;
            break;
        case kms < 50:
            provinceCost = 7;
            break;
        default:
            provinceCost = 0;
    }

    $("#provinceCost").text(provinceCost);

    var leaderPrice = 25;
    var vacuumPrice = 25;
    var equipmentPrice = 20;

    var needsLeader = $("#leader").is(":checked");
    var needsVacuum = $("#vacuum").is(":checked");
    var needsEquipment = $("#basicEquipment").is(":checked");

    var total = 0;

    if (provinceCost > 0) {
        hours = $("#hours").val();
        var subTotal = hours * 4;
        total = total + subTotal;

        //Descuento si tiene las 2
        if (needsLeader && needsVacuum) {
            leaderPrice = 20;
            vacuumPrice = 20;
        } else {
            leaderPrice = 25;
            vacuumPrice = 25;
        }

        if (needsLeader) {
            total = total + leaderPrice;
        }

        if (needsEquipment) {
            total = total + equipmentPrice;
        }

        if (needsVacuum) {
            total = total + vacuumPrice;
        }

        $("#total").text(total.toFixed(2) + " €");
    } else {
        alert(
            "Su ubicación, está fuera de rango para nuestros servicios. \n Puede hablar con alguno de nuestros asesores."
        );
    }
}

var othersControl = $("#others");
othersControl.click(function() {
    if (othersControl.is(":checked")) {
        $("#othersText").slideDown();
        $("#othersText").focus();
    } else {
        $("#othersText").slideUp();
    }
});

function Intentar(){
    $("#miprueba").text("hola");
}

$("#miprueba").onchange(
    () => { alert('aqui estamos en el 91')}
)