require_relative 'reservation'

class RentalDatabase

	def initialize()
		@rentals = [Reservation.new("john", "010", "12/16/2010", 1),
					Reservation.new("jane", "130", "12/17/2010", 2),
					Reservation.new("joe", "125", "12/13/2010", 1)]
	end

  	def cancel_reservation()
  		@rentals.each do |i|
  			@rentals.delete(i)
  		end
  	end

	def print_all_rentals()
		@rentals.each do |num|
			puts num.print_rental_row
		end
	end

end

