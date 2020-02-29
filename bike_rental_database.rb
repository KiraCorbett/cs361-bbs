
require_relative 'bike_rental'
class BikeRentalDatabase

def initialize(rentals)
  @rentals = rentals
end

def print_all_rentals()
  @rentals.each do |num|
    puts num
end


end

end

puts("hello")

a = BikeRentalDatabase.new([BikeRental.new("john doe","12/18/2010"),
BikeRental.new("jane doe","12/17/2010")])
a.print_all_rentals
