import { Component, OnInit } from '@angular/core';
import { Flight } from "../models/flight";
import { FlightService } from "../services/flight.service";

@Component({
  selector: 'app-flight-create',
  templateUrl: './flight-create.component.html',
  styleUrls: ['./flight-create.component.css']
})
export class FlightCreateComponent implements OnInit {

  flight: Flight = new Flight();
  success: boolean = false;
  trip_types = ["One Way","Round Trip","Multiple Destinations"];

  constructor(private flightService: FlightService) { }

  ngOnInit() {
  }

  onSubmit(){
    this.saveFlight();
  }

  saveFlight(){
    this.flightService.flightCreate(this.flight)
        .subscribe(
          data => {
            this.success = true;
            console.log("New flight added!!");
          },
          error => console.log("Sorry, cannot save! " + error)
        )
  }

}
