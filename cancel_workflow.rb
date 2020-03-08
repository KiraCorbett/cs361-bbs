require_relative 'rental_database'

class CancellationWorkflow

  def initialize()
    @rental_database = RentalDatabase.new
  end

  def get_reservation()
    @rental_database.print_all_rentals
    puts 'Which reservation would you like to cancel? (Please enter the Rental ID.)'
    reservation_input = gets.strip.chomp.downcase
    if @rental_database.is_reservation(reservation_input)
      puts 'cancelling bike'
      @rental_database.cancel_rental
      puts 'cancelled bike'
      @rental_database.print_all_rentals
    else 
      puts reservation_input + ' is not a valid reservation!'
      puts "..."
      get_reservation
    end
  end

  def confirm_cancellation() 
    puts 'You have cancelled this bike reservation.'
    sleep(1)
    puts 'Thank you for visiting the Bend Bike Shop!'
  end

  def run()
      get_reservation
      #confirm_cancellation
  end
end