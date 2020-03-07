require_relative 'rental_database'

class CancellationWorkflow

  def initialize()
    @rental_database = RentalDatabase.new
  end

  def get_reservation()
    @rental_database.print_all_rentals
    puts 'Which reservation would you like to cancel? (Please enter the Rental ID.)'
    reservation_input = gets.strip.chomp.downcase
  end

  def confirm_cancellation() 
    puts "You have cancelled this bike reservation."
    sleep(1)
    puts "Press enter to continue..."
    gets
  end

  def run()
      get_reservation
      #confirm_cancellation
  end
end