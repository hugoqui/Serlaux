import { Component, OnInit } from "@angular/core";
import { HttpClient } from "@angular/common/http";
import { createEmptyStateSnapshot } from "../../../node_modules/@angular/router/src/router_state";
import { Observable } from "../../../node_modules/rxjs/Observable";
import { async } from "../../../node_modules/@angular/core/testing";

declare var jQuery: any;
declare var $: any;

@Component({
    selector: "app-presupuestocondominios",
    templateUrl: "./presupuestocondominios.component.html",
    styleUrls: ["./presupuestocondominios.component.css"]
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

    tablaPrecio: any;
    basePrecio = 9;

    constructor(private http: HttpClient) {}

    ngOnInit() {
        $(".nav-item").removeClass("active");
        $("#quoteMenu").addClass("active");

        this.horas = 1; // minimo de horas 1
        this.viviendas = 1;
        this.ventanas = 1;
        this.desplazamiento = 4;
        this.dias = 1;
    }

    CalcularPrecio() {
        const distancia = $("#distancia").val();
        const kmString = distancia.replace("km", "").trim();
        const kms: number = parseInt(kmString, 10);
        let resultado = 0;

        const provinceName = $("#provinceName")
            .val()
            .trim();

        this.http
            .get("http://backend.foxclean.es/api/presupuestos/CostoDesplazamientoprov/?provincia=" + provinceName)
            .subscribe(response => {
                this.tablaPrecio = response;
                console.log(this.tablaPrecio);

                for (let i = 0; i < this.tablaPrecio.length; i++) {
                    const element = this.tablaPrecio[i];
                    const desde = element.Desde;
                    const hasta = element.Hasta;

                    if (kms >= desde && kms <= hasta) {
                        resultado = element.Desplazamiento;
                        this.basePrecio = element.PrecioHora;
                    }
                }
                this.desplazamiento = resultado;

                if (distancia == null || distancia === "") {
                    alert("Por favor, indique una localidad.");
                    $("#quoteTable").fadeOut();
                } else {
                    const horasVentanas: number = this.ventanas / 10;
                    const horasViviendas: number = this.viviendas / 50;

                    let horas = horasVentanas + horasViviendas;
                    this.horas = horas;
                    horas = parseInt(horas.toString(), 10);
                    let diferencia = this.horas - horas;
                    if (diferencia >= 0.5) {
                        diferencia = 0.5;
                    } else {
                        diferencia = 0;
                    }
                    this.horas = horas + diferencia;
                    if (this.horas < 1) {
                        this.horas = 1;
                    }

                    this.precioHora =
                        (this.basePrecio * this.horas + this.desplazamiento) /
                        this.horas;
                    const _misdias = $("#days").val();
                    this.dias = parseInt(_misdias, 10);
                    this.totalSemanal = this.precioHora * this.horas * _misdias;

                    this.totalMensual = this.totalSemanal * 4.34; // se promedia a 4.34 semanas al mes
                    $("#total").text(this.totalMensual.toFixed(2) + " €");

                    if (this.desplazamiento === 0) {
                        alert(
                            "Su localidad está fuera de el radio de atención. \nPuede contactar a un asesor para más información."
                        );
                        $("#quoteTable").fadeOut();
                    } else {
                        $("#quoteTable").fadeIn();
                    }
                }
            });
    }
}
