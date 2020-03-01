
require_relative 'bike_rental'
class BikeRentalDatabase
  attr_accessor :test
def self.test
  puts("yo")
end

def initialize(rentals)
  @rentals = rentals
end

def print_all_rentals()
  @rentals.each do |num|
    puts num.print_rental
end

end

end


#for tesing only
a = BikeRentalDatabase.new([BikeRental.new("john doe","125","12/16/2010","12/18/2010"),
BikeRental.new("jane doe","125","12/17/2010","12/18/2010")])
a.print_all_rentals
