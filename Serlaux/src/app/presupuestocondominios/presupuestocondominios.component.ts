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

    constructor() { }

    ngOnInit() {
        $('.nav-item').removeClass('active');
        $('#quoteMenu').addClass('active');

        this.horas = 1; // minimo de horas 1
        this.viviendas = 1;
        this.ventanas = 1;
        this.desplazamiento = 4;
        this.dias = 1;
    }

    CalcularPrecio() {
        let distancia = $('#distancia').val();
        console.log('distancia sin convertir ', distancia);
        this.desplazamiento = this.ConvertirKm(distancia);
        console.log('distancia convertida  ', this.desplazamiento);

        if (distancia == null || distancia === '')  {
            alert('Por favor, indique una localidad.');
            $('#quoteTable').fadeOut();
        } else {
            let horasVentanas: number = this.ventanas / 10;
            let horasViviendas: number = this.viviendas / 50;
            console.log('horas ventanas ', horasVentanas);
            console.log('horas viviendas ', horasViviendas);

            let horas = horasVentanas + horasViviendas;
            this.horas = horas;
            horas = parseInt(horas.toString());
            let diferencia = this.horas - horas;
            if (diferencia >= 0.5) {
                diferencia = 0.5;
            } else {
                diferencia = 0;
            }
            this.horas = horas + diferencia;
            console.log('total horas ', this.horas);

            if (this.horas < 1) {
                this.horas = 1;
            }
            console.log('total horas final ', this.horas);
            // alert('Resultado: ' + this.desplazamiento);

            this.precioHora = ((9 * this.horas) + this.desplazamiento) / this.horas;
            this.totalSemanal = this.precioHora * this.horas * this.dias;
            this.totalMensual = this.totalSemanal * 4.34; // se promedia a 4.34 semanas al mes
            if (this.desplazamiento === 0) {
                alert('Su localidad está fuera de el radio de atención. \nPuede contactar a un asesor para más información.');
                $('#quoteTable').fadeOut();
            } else {
                $('#quoteTable').fadeIn();
            }
        }
    }

    ConvertirKm(texto: string) {
        var kmString = texto.replace('km', '').trim();
        console.log('kmStrin ', kmString);

        let kms: number = parseInt(kmString);
        console.log('Total kms ', kmString);

        let resultado = 2;
        if (kms <= 20) {
            resultado = 4;
        } else if (kms <= 30 && kms >= 21) {
            resultado = 5;
        } else if (kms <= 40 && kms >= 31) {
            resultado = 6;
        } else if (kms <= 50 && kms >= 41) {
            resultado = 7;
        } else {
            resultado = 0;
        }
        console.log('Tarifa Aplicada +', resultado);
        return resultado;
    }


}
