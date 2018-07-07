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
    console.log('los kilometros en float', kms)
    var provinceCost = 4;
    switch (true) {
        case (kms < 20):
            provinceCost = 4;
            break;
        case (kms < 30):
            provinceCost = 5;
            break;
        case (kms < 40):
            provinceCost = 6;
            break;
        case (kms < 50):
            provinceCost = 7;
            break;

        default:
            provinceCost = 0;
    }

    if (provinceCost > 0) {
        var finalHourRate = ((9 * dailyHours) + provinceCost) / dailyHours;
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

        console.log("Desplazamiento rango +", provinceCost);
        console.log("Horas " + dailyHours);
        console.log("Total €" + total);

        $("#quoteTable").fadeIn(1000);
        //$("#quoteTable").removeClass("hidden");    
    } else {
        alert('Su ubicación, está fuera de rango para nuestros servicios. \n Puede hablar con alguno de nuestros asesores.')
    }

}

$(document).ready(
    function () {
        $(".daysCheckbox").click(
            () => {
                var days = 0;
                if ($("#mondayBox").is(":checked")) {
                    days = days + 1;
                }

                if ($("#tuesdayBox").is(":checked")) {
                    days = days + 1;
                }

                if ($("#wednesdayBox").is(":checked")) {
                    days = days + 1;
                }

                if ($("#thursdayBox").is(":checked")) {
                    days = days + 1;
                } 

                if ($("#fridayBox").is(":checked")) {
                    days = days + 1;
                }

                if ($("#saturdayBox").is(":checked")) {
                    days = days + 1;
                }

                if ($("#sundayBox").is(":checked")) {
                    days = days + 1;
                }

                if (days == 0) {days = 1}
                $("#days").val(days);
            }
        );
    }
);