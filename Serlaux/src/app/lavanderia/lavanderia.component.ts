import { Component, OnInit } from '@angular/core';
import * as $ from 'jquery';
@Component({
  selector: 'app-lavanderia',
  templateUrl: './lavanderia.component.html',
  styleUrls: ['./lavanderia.component.css']
})
export class LavanderiaComponent implements OnInit {

  constructor() { }

  ngOnInit() {
    $('.nav-item').removeClass('active');
    $('#serviceMenu').addClass('active');
  }

}
