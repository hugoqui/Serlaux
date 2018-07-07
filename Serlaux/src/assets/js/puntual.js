function CalcularPuntual() {
    var hours = $("#hours").val(); //pendiente
    hours = parseInt(hours);
    var subTotal = hours * 13;
    $("#totalPerHours").text(subTotal.toFixed(2) + " €")


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
            provinceCost = 4; //estaba antes a 0
    }

    $("#provinceCost").text(provinceCost.toFixed(2) + " €");

    var leaderPrice = 25;
    var vacuumPrice = 25;
    var equipmentPrice = 20;

    var needsLeader = $("#leader").is(":checked");
    var needsVacuum = $("#vacuum").is(":checked");
    var needsEquipment = $("#basicEquipment").is(":checked");

    var total = 0;

    total = total + subTotal + provinceCost;

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
    } else {
        $("#leaderPrice").addClass("muted");
    }

    if (needsEquipment) {
        $("#basicEquipmentPrice").removeClass("muted");
        total = total + equipmentPrice;
    } else {
        $("#basicEquipmentPrice").addClass("muted");
    }

    if (needsVacuum) {
        $("#vacuumPrice").removeClass("muted");
        total = total + vacuumPrice;
    } else {
        $("#vacuumPrice").addClass("muted");
    }

    $("#leaderPrice").text(leaderPrice.toFixed(2)+ " €");
    $("#vacuumPrice").text(vacuumPrice.toFixed(2)+ " €");
    $("#total").text(total.toFixed(2) + " €");
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
                        CalcularPuntual()
                    }, 500)
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

        if (mm <10 ){mm = "0" + mm}
        if (dd <10 ){dd = "0" + dd}

        $("#myDate").val(yy + "-" + mm + "-" + dd);
        var hh = _d.getHours();
        var min = _d.getMinutes();
        if (hh < 10){hh = "0" + hh}
        if (min < 10) {min = "0" + min}
        $("#myTime").val(hh + ":" + min);        
    }
);