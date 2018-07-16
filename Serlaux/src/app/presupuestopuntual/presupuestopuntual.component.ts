import { Component, OnInit } from '@angular/core';
declare var jQuery: any;
declare var $: any;
@Component({
  selector: 'app-presupuestopuntual',
  templateUrl: './presupuestopuntual.component.html',
  styleUrls: ['./presupuestopuntual.component.css']
})
export class PresupuestopuntualComponent implements OnInit {

  constructor() { }

  ngOnInit() {
    $(".nav-item").removeClass("active");
    $("#quoteMenu").addClass("active");
  }

}
