import { Component, OnInit } from '@angular/core';
import * as $ from 'jquery';
@Component({
  selector: 'app-conductos',
  templateUrl: './conductos.component.html',
  styleUrls: ['./conductos.component.css']
})
export class ConductosComponent implements OnInit {

  constructor() { }

  ngOnInit() {
    $('.nav-item').removeClass('active');
    $('#serviceMenu').addClass('active');
  }

}
