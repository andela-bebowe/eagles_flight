# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
def randi
  rand(1..30)
end
date = Time.zone.now + randi.day

user1 = User.create(name: "Blessing", email: "blessingebowe@gmail.com", ssn: "uk123", password_digest: "blessing")
user1 = User.create(name: "Blessing", email: "blessing.ebowe@andela.com", ssn: "uk123", password_digest: "blessing")

# passenger1 = Passenger.create(name: "Blessing", email: "blessing.ebowe@andela.com", ssn: "uk123")
# passenger2 = Passenger.create(name: "Blessing", email: "blessing.ebowe@andela.com", ssn: "uk123")

Airline.create(name: "Dana Air", price: 5000)
Airline.create(name: "GIG Air", price: 2000)
Airline.create(name: "SafeWay Air", price: 3000)
Airline.create(name: "Galaxy Air", price: 1500)
Airline.create(name: "Eclypse Air", price: 4000)
Airline.create(name: "Arik Air", price: 8000)

6.times do
Plane.create(name: "Boeing707", owner_id: 6,flight_id: randi)
Plane.create(name: "Boeing797", owner_id: 5,flight_id: randi)
Plane.create(name: "M55", owner_id: 4,flight_id: randi)
Plane.create(name: "HM125", owner_id: 3,flight_id: randi)
Plane.create(name: "Boeing790", owner_id: 3,flight_id: randi)
Plane.create(name: "Boeing797", owner_id: 2,flight_id: randi)
Plane.create(name: "Ericson", owner_id: 1,flight_id: randi)
end

Airport.create(name: "Murtala", location: "Lagos")
Airport.create(name: "National", location: "Portharcourt")
Airport.create(name: "International", location: "Abuja")
Airport.create(name: "Igbinedion", location: "Benin")
Airport.create(name: "Private", location: "Kano")
Airport.create(name: "Sourthern", location: "Delta")
Airport.create(name: "Murtala", location: "Lagos")

5.times do
Flight.create(destination_id: 7, departure_id: 2, departure_date: date, price: 4000)
Flight.create(destination_id: 6, departure_id: 1, departure_date: date, price: 2000)
Flight.create(destination_id: 5, departure_id: 7, departure_date: date, price: 9000)
Flight.create(destination_id: 4, departure_id: 6, departure_date: date, price: 1000)
Flight.create(destination_id: 3, departure_id: 2, departure_date: date, price: 8000)
Flight.create(destination_id: 1, departure_id: 3, departure_date: date, price: 7000)
Flight.create(destination_id: 2, departure_id: 4, departure_date: date, price: 5000)
end