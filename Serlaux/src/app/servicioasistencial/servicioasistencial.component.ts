import { Component, OnInit } from '@angular/core';
import * as $ from 'jquery';
@Component({
  selector: 'app-servicioasistencial',
  templateUrl: './servicioasistencial.component.html',
  styleUrls: ['./servicioasistencial.component.css']
})
export class ServicioasistencialComponent implements OnInit {

  constructor() { }

  ngOnInit() {
    $('.nav-item').removeClass('active');
    $('#serviceMenu').addClass('active');
  }

}
