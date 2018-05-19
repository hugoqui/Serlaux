import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ServicioasistencialComponent } from './servicioasistencial.component';

describe('ServicioasistencialComponent', () => {
  let component: ServicioasistencialComponent;
  let fixture: ComponentFixture<ServicioasistencialComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ServicioasistencialComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ServicioasistencialComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
