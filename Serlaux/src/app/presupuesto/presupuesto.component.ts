import { Component, OnInit } from '@angular/core';
import * as $ from 'jquery';
@Component({
  selector: 'app-presupuesto',
  templateUrl: './presupuesto.component.html',
  styleUrls: ['./presupuesto.component.css']
})
export class PresupuestoComponent implements OnInit {

  constructor() { }

  ngOnInit() {
    $('.nav-item').removeClass('active');
    $('#quoteMenu').addClass('active');
  }

  
}
