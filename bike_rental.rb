require_relative 'bike_type'

class BikeRental
 attr_accessor :print_rental
 def initialize(customer_name,bike_id,date_rented,expected_return,rented_qty)
   @bike_id = bike_id
   @customer_name = customer_name
   @date_rented = date_rented
   @rented_qty = rented_qty

 end
 def print_rental_row()
   print("customer name: ",@customer_name, " | bike ID:",@bike_id,
     " Date rented: ",@date_rented," rented qty:",@rented_qty)
 end

end
