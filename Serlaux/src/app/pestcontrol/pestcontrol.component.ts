import { Component, OnInit } from '@angular/core';
import * as $ from 'jquery';
@Component({
  selector: 'app-pestcontrol',
  templateUrl: './pestcontrol.component.html',
  styleUrls: ['./pestcontrol.component.css']
})
export class PestcontrolComponent implements OnInit {

  constructor() { }

  ngOnInit() {
    $('.nav-item').removeClass('active');
    $('#serviceMenu').addClass('active');
  }

}
