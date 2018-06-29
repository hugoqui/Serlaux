import { Component, OnInit } from '@angular/core';

// import { NullAstVisitor } from '@angular/compiler';
// import { totalmem } from 'os';
// import { text } from '@angular/core/src/render3/instructions';

// Declaramos las variables para jQuery
declare var jQuery: any;
declare var $: any;

@Component({
  selector: 'app-presupuestocondominios',
  templateUrl: './presupuestocondominios.component.html',
  styleUrls: ['./presupuestocondominios.component.css']
})
export class PresupuestocondominiosComponent implements OnInit {

    horas: number;
    viviendas: number;
    ventanas: number;
    precioHora: number;
    desplazamiento: number;
    dias: number;

    totalSemanal: number;
    totalMensual: number;

    miLongitud: any;
    miLatitud: any;

    latiudOrigen = 40.4163554;
    longitudOrigen = 3.7046296999999413;

    constructor() { }

    ngOnInit() {
        this.horas = 1.5; // minimo de horas 1.5
        this.viviendas = 1;
        this.ventanas = 1;
        this.desplazamiento = 4;
        this.dias = 1;
    }

    CalcularPrecio() {
        let distancia = $('#distancia').val();

        if (distancia == null || distancia === '') {
            alert('Por favor, comparta su ubicación primero.');
            $('#quoteTable').fadeOut();
        } else {
            this.desplazamiento = this.ConvertirKm(distancia);

            // alert('Resultado: ' + this.desplazamiento);

            this.precioHora = 12 + this.desplazamiento;
            this.totalSemanal = this.precioHora * this.dias;
            this.totalMensual = this.totalSemanal * 4.34; // se promedia a 4.34 semanas al mes
            $('#quoteTable').fadeIn();
        }
    }

    ConvertirKm(texto: string) {
        var kmString = texto.replace('km', '').trim();
        let kms: number = parseInt(kmString);

        let resultado = 2;
        if (kms <= 15) {
            resultado = 4;
        } else if (kms < 30 && kms >= 16) {
            resultado = 5;
        } else if (kms < 45 && kms >= 31) {
            resultado = 6;
        } else {
            resultado = 0;
        }

        return resultado;
    }

    ShowLocation() {
        if ('geolocation' in navigator) { // check geolocation available 
            // try to get user current location using getCurrentPosition() method
            navigator.geolocation.getCurrentPosition(function(position) {
                this.miLatitud = position.coords.latitude;
                this.miLongitud = position.coords.longitude;

                $('#result').html('Found your location <br />Lat : ' +
                position.coords.latitude + ' </br>Lang :' + position.coords.longitude);
            });
        } else {
            console.log('Browser doesnt support geolocation!');
        }
    }

}
