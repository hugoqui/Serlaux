import { Component, OnInit } from '@angular/core';
import * as $ from 'jquery';
@Component({
  selector: 'app-ventanas',
  templateUrl: './ventanas.component.html',
  styleUrls: ['./ventanas.component.css']
})
export class VentanasComponent implements OnInit {

  constructor() { }

  ngOnInit() {
    $('.nav-item').removeClass('active');
    $('#serviceMenu').addClass('active');
  }

}
