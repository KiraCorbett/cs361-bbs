require_relative 'bike_rental_database'
require_relative 'bike_rental'
class TestDatabase
def run()
a = BikeRentalDatabase.new([BikeRental.new("john","125","12/16/2010","12/18/2010",1),
BikeRental.new("jane","122","12/17/2010","12/18/2010",2),
BikeRental.new("kate","567","12/19/2010","12/20/2010",2)])
a.print_all_rentals
end
end
