require_relative 'bike_type'

class BikeRental
 attr_accessor :print_rental
 def initialize(customer_name,bike_id,date_rented,expected_return)
   @bike_id = bike_id
   @customer_name = customer_name
   @date_rented = date_rented


 end
 def print_rental()
   print("customer name: ",@customer_name, " | bike ID: ",@bike_id, " Date rented: ",@date_rented)
 end

end
