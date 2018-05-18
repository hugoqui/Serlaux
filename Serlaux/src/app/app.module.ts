import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppComponent } from './app.component';
import { InicioComponent } from './inicio/inicio.component';
import { AppRoutingModule } from './/app-routing.module';

import { RouterModule, Routes } from '@angular/router';


const appRoutes: Routes = [
  { path: '', component: InicioComponent }
];

@NgModule({
  declarations: [
    AppComponent,
    InicioComponent
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
