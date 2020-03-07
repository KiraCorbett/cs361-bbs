require_relative 'reservation'

class RentalDatabase
	attr_accessor

	def initialize()
		@rentals = [Reservation.new("john","010","12/16/2010","12/18/2010",1),
					Reservation.new("jane","130","12/17/2010","12/18/2010",2),
					Reservation.new("joe","125","12/13/2010","12/18/2010",1)]
	end

	def is_reservation(reservation_input)
		
		return @rentals.has_attribute?(:rental_id)
  	end

	def print_all_rentals()
		@rentals.each do |num|
			puts num.print_rental_row
		end
	end

end

