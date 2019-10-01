from django.db import models

class Schedule(models.Model):
    airline = models.CharField(max_length=200)
    flight_no = models.CharField(max_length=10)
    trip_type = models.CharField(max_length=100)
    departure_airport = models.CharField(max_length=255)
    arrival_airport = models.CharField(max_length=255)
    departure_date = models.DateField()
    return_date = models.DateField()

