import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterModule, Routes, Router } from '@angular/router';
import { BrowserModule } from '@angular/platform-browser';

import { InicioComponent } from './inicio/inicio.component';
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

const appRoutes: Routes = [
    { path: '', component: InicioComponent } ,
    { path: 'oficinas',      component: OficinasComponent },
    { path: 'comunidades',      component: ComunidadesComponent },
    { path: 'contacto',      component: ContactoComponent },
    { path: 'conductos',      component: ConductosComponent },
    { path: 'lavanderia',      component: LavanderiaComponent },
    { path: 'controlplagas',      component: PestcontrolComponent },
    { path: 'servicioasistencial',      component: ServicioasistencialComponent },
    { path: 'serviciodomestico',      component: ServiciodomesticoComponent },
    { path: 'ventanas',      component: VentanasComponent },
    { path: 'presupuesto',      component: PresupuestoComponent },
    { path: 'presupuestocondominios',      component: PresupuestocondominiosComponent },
    { path: 'presupuestopuntual',      component: PresupuestopuntualComponent },
    { path: '**', redirectTo: ''},
  ];

@NgModule({
  imports: [
    CommonModule,
    RouterModule.forRoot(appRoutes)
  ],
  exports: [RouterModule]
})
export class AppRoutingModule { }
export const routingComponents = [
    InicioComponent, OficinasComponent, ComunidadesComponent, ContactoComponent, ConductosComponent,
    LavanderiaComponent, PestcontrolComponent, ServicioasistencialComponent, ServiciodomesticoComponent,
    VentanasComponent, PresupuestoComponent ];
