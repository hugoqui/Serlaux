import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ConductosComponent } from './conductos.component';

describe('ConductosComponent', () => {
  let component: ConductosComponent;
  let fixture: ComponentFixture<ConductosComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ConductosComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ConductosComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
