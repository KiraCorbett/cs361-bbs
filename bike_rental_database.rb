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
    puts num.print_rental_row
end

end

end
