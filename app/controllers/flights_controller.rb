class FlightsController < ApplicationController
  def index
    @airports = Airport.locations
    @dates = Flight.formatted_departure_date
    @flight = Flight.search(params)
  end
end
