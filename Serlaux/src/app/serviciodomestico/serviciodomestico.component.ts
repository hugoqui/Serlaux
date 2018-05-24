import { Component, OnInit } from '@angular/core';
import * as $ from 'jquery';
@Component({
  selector: 'app-serviciodomestico',
  templateUrl: './serviciodomestico.component.html',
  styleUrls: ['./serviciodomestico.component.css']
})
export class ServiciodomesticoComponent implements OnInit {

  constructor() { }

  ngOnInit() {
    $('.nav-item').removeClass('active');
    $('#serviceMenu').addClass('active');
  }

}
