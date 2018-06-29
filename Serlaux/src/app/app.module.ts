import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';

import { AppComponent } from './app.component';
import { InicioComponent } from './inicio/inicio.component';
import { AppRoutingModule } from './/app-routing.module';

import { RouterModule, Routes } from '@angular/router';
import { OficinasComponent } from './oficinas/oficinas.component';
import { ComunidadesComponent } from './comunidades/comunidades.component';
import { VentanasComponent } from './ventanas/ventanas.component';
import { ConductosComponent } from './conductos/conductos.component';
import { PestcontrolComponent } from './pestcontrol/pestcontrol.component';
import { ServiciodomesticoComponent } from './serviciodomestico/serviciodomestico.component';
import { ServicioasistencialComponent } from './servicioasistencial/servicioasistencial.component';
import { LavanderiaComponent } from './lavanderia/lavanderia.component';
import { ContactoComponent } from './contacto/contacto.component';
import { PresupuestoComponent } from './presupuesto/presupuesto.component';
import { PresupuestocondominiosComponent } from './presupuestocondominios/presupuestocondominios.component';
import { PresupuestopuntualComponent } from './presupuestopuntual/presupuestopuntual.component';


@NgModule({
  declarations: [
    AppComponent,
    InicioComponent,
    OficinasComponent,
    ComunidadesComponent,
    VentanasComponent,
    ConductosComponent,
    PestcontrolComponent,
    ServiciodomesticoComponent,
    ServicioasistencialComponent,
    LavanderiaComponent,
    ContactoComponent,
    PresupuestoComponent,
    PresupuestocondominiosComponent,
    PresupuestopuntualComponent
  ],
  imports: [
    RouterModule,
    BrowserModule,
    AppRoutingModule,
    FormsModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
