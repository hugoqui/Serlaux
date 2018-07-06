function CalcularPuntual() {
    
    var hours = $("#horas").val(); //pendiente
    hours = parseInt(hours);
    
    var kms = $('#distancia').val();
    kms = kms.replace('km', '');
    kms = kms.replace(',','.');    
    kms = parseFloat(kms);
    
    var provinceCost = 4;
    switch (true){
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
    
    var leaderPrice = 4;
    var vacuumPrice = 4;
    var equipmentPrice = 4;
    var othersPrice = 4;

    var needsLeader = $("#leader").is(":checked");
    var needsVacuum =  $("#vacuum").is(":checked");
    var needsEquipment = $("#basicEquipment").is(":checked");
    var needsOthers = $("#others").is(":checked");
    
    if (provinceCost > 0) {
        var finalHourRate = ((13 * hours) + provinceCost) / hours;
        $(".totalHrs").text(hours);

        
        
        var subTotal = (finalHourRate * hours);
        var total = 0;

        if (needsEquipment || needsVacuum || needsLeader || needsOthers) { $("#rowAditional").slideDown() }

        if (needsLeader) { // escalera
            $("#rowLeader").slideDown("slow");
            $("#totalLeader").text(leaderPrice.toFixed(2) + " €");
            total = total + leaderPrice;
        } else {
            $("#rowLeader").slideUp("slow");
        }

        if (needsEquipment) { // escalera
            $("#rowBasicEquipment").slideDown("slow");
            $("#totalEquipment").text(equipmentPrice.toFixed(2) + " €");
            total = total + equipmentPrice;
        } else {
            $("#rowBasicEquipment").slideUp("slow");
        }

        if (needsVacuum) { // escalera
            $("#rowVacuum").slideDown("slow");
            $("#totalVacuum").text(vacuumPrice.toFixed(2) + " €")
            total = total + vacuumPrice;
        } else {
            $("#rowVacuum").slideUp("slow");
        }
        
        if (needsOthers) { // escalera
            $("#rowOthers").slideDown("slow");
            var othersText = $("#othersText").val();
            $("#othersDescription").text(othersText.trim());
            $("#totalOthers").text(othersPrice.toFixed(2) + " €");
            total = total + othersPrice;
        } else {
            $("#rowOthers").slideUp("slow");
        }

        $("#subTotal").text(subTotal .toFixed(2) + " €");
        total = total + subTotal;
        $("#total").text(total.toFixed(2) + " €");
        $("#quoteTable").fadeIn(1000);
    } else {
        alert('Su ubicación, está fuera de rango para nuestros servicios. \n Puede hablar con alguno de nuestros asesores.')
    }
}

$("#others").click(function(){
    if ($("#others").is(":checked")) {
        $("#othersText").focus();    
    }        
});