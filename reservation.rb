require_relative 'rental_type'

class Reservation
	attr_accessor :print_rental, :rental_id
 
 	def initialize(customer_name, rental_id, date_rented, date_return, rented_qty)
	   @rental_id = rental_id
	   @customer_name = customer_name
	   @date_rented = date_rented
	   @date_return = date_return
	   @rented_qty = rented_qty
	end

 	def print_rental_row()
   		print("Customer Name: ", @customer_name, " | Rental ID: ", @rental_id,
     		  " | Date Rented: ", @date_rented, " | Expected Return: ", @date_return, " | Rented Qty:", @rented_qty)
 	end

end
