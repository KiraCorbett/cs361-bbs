require_relative 'bike_rental'
class BikeRentalDatabase
  attr_accessor :test
def self.test
  puts("yo")
end

def initialize()
  @rentals = [BikeRental.new("john","125","12/16/2010","12/18/2010",1),
	BikeRental.new("jane","125","12/17/2010","12/18/2010",2)]
end

def print_all_rentals()
  @rentals.each do |num|
    puts num.print_rental_row
end

end

end


#for tesing only. this should be moved elsewhere

