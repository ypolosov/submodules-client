import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterModule, Route } from '@angular/router';

export const uiRoutes: Route[] = [];
@NgModule({
  imports: [CommonModule, RouterModule]
})
export class UiModule {
  constructor() {
    console.log('xxx');
    console.log('xxx');
  }
}
