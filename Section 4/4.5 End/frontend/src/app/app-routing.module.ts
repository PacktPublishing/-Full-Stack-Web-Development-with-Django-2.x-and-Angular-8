import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { FlightListComponent } from "./flight-list/flight-list.component";
import { FlightCreateComponent } from "./flight-create/flight-create.component";
import { FlightEditComponent } from "./flight-edit/flight-edit.component";

const routes: Routes = [
  {path: '', redirectTo: 'flights', pathMatch: 'full'},
  {path: 'flights', component: FlightListComponent},
  {path: 'add', component: FlightCreateComponent},
  {path: 'edit/:id', component: FlightEditComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
