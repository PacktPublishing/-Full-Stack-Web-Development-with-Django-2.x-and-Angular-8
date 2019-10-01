import { Component, OnInit } from '@angular/core';
import { Observable } from "rxjs";
import { Flight } from "../models/flight";
import { FlightService } from "../services/flight.service";

@Component({
  selector: 'app-flight-list',
  templateUrl: './flight-list.component.html',
  styleUrls: ['./flight-list.component.css']
})
export class FlightListComponent implements OnInit {

  flights: Observable<Flight[]>;
  constructor(private flightService: FlightService) { }

  ngOnInit() {
    this.loadFlightsData();
  }

  loadFlightsData(){
    this.flights = this.flightService.getAllFlights();
  }

  deleteFlight(id){

  }

  deleteAllFlights(){

  }

}
