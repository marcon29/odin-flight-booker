class FlightsController < ApplicationController
    
    def index
        @arrive_airports = Airport.all.select { |ap| ap.departures.present? }
        @depart_airports = Airport.all.select { |ap| ap.arrivals.present? }
        @num_passengers = [1, 2, 3, 4]
        @flights = Flight.where(depart_airport_id: request.parameters[:depart_airport_id]).where(arrive_airport_id: request.parameters[:arrive_airport_id]).where(date: request.parameters[:date])
        @passenger_count = request.parameters[:num_passengers]
    end
    
    

end
