import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

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


const appRoutes: Routes = [
  { path: '', component: InicioComponent } ,
  { path: 'oficinas',      component: OficinasComponent },
  { path: 'comunidades',      component: ComunidadesComponent },
  { path: 'contacto',      component: ContactoComponent },
  { path: 'conductos',      component: ConductosComponent },
  { path: 'lavanderia',      component: LavanderiaComponent },
  { path: 'pestcontrol',      component: PestcontrolComponent },
  { path: 'servicioasistencial',      component: ServicioasistencialComponent },
  { path: 'serviciodomestico',      component: ServiciodomesticoComponent },
  { path: 'ventanas',      component: VentanasComponent },
];

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
    ContactoComponent
  ],
  imports: [
    RouterModule.forRoot(
      appRoutes,
      { enableTracing: true } // <-- debugging purposes only
    ),
    BrowserModule,
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
