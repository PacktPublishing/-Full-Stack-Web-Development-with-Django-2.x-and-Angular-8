import { Component, OnInit } from '@angular/core';
import { Observable, ObservedValueOf } from "rxjs";
import { Flight } from "../models/flight";
import { FlightService } from "../services/flight.service";
import { ActivatedRoute } from "@angular/router";

@Component({
  selector: 'app-flight-edit',
  templateUrl: './flight-edit.component.html',
  styleUrls: ['./flight-edit.component.css']
})
export class FlightEditComponent implements OnInit {

  flight: Observable<Flight>;
  flight_id: number;
  success: boolean = false;
  trip_types = ["One Way","Round Trip","Multiple Destinations"];

  constructor(private flightService: FlightService,
              private activatedRoute: ActivatedRoute) { }

  ngOnInit() {
    this.activatedRoute.paramMap.subscribe(
      params => {
        this.flight_id = Number(params.get("id"));
      }
    );
    this.loadFlightData();
  }

  loadFlightData(){
    this.flightService.getFlight(this.flight_id)
        .subscribe(
          data => {
            this.flight = data;
          }
        );
  }
  updateFlight(){
    this.flightService.updateFlight(this.flight_id,this.flight)
        .subscribe(
          data => {
            this.flight = data as Observable<Flight>;
            this.success = true;
          },
          error => console.log("Oops.  Cannot update! " + error)
        );
  }

  onSubmit(){
    this.updateFlight();
  }

}
