require_relative 'bike_type'

class Reservation
	attr_accessor :print_rental, :rental_id
 
 	def initialize(customer_name, rental_id, date_rented, rented_qty)
	   @customer_name = customer_name
	   @rental_id = rental_id
	   @date_rented = date_rented
	   @rented_qty = rented_qty
	end

 	def print_rental_row()
   		print("Customer Name: ", @customer_name, " | Rental ID: ", @rental_id,
     		  " | Date Rented: ", @date_rented," | Rented Qty:", @rented_qty)
 	end

end
