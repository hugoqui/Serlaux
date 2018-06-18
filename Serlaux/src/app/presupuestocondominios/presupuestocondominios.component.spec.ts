import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { PresupuestocondominiosComponent } from './presupuestocondominios.component';

describe('PresupuestocondominiosComponent', () => {
  let component: PresupuestocondominiosComponent;
  let fixture: ComponentFixture<PresupuestocondominiosComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ PresupuestocondominiosComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(PresupuestocondominiosComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
