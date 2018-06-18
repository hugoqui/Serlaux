import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { PresupuestopuntualComponent } from './presupuestopuntual.component';

describe('PresupuestopuntualComponent', () => {
  let component: PresupuestopuntualComponent;
  let fixture: ComponentFixture<PresupuestopuntualComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ PresupuestopuntualComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(PresupuestopuntualComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
