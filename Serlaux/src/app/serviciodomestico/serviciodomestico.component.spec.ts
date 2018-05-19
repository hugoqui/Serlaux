import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ServiciodomesticoComponent } from './serviciodomestico.component';

describe('ServiciodomesticoComponent', () => {
  let component: ServiciodomesticoComponent;
  let fixture: ComponentFixture<ServiciodomesticoComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ServiciodomesticoComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ServiciodomesticoComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
