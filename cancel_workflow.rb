require_relative 'rental_database'

class CancellationWorkflow

  def initialize()
    @rental_database = RentalDatabase.new
  end

  def get_cancelling_bike()
    @rental_database.print_all_rentals
    puts 'Which reservation would you like to cancel?'
    #@rental.select_bike(@customer.name)
  end

  def confirm_cancellation() 
    puts "You have cancelled this bike reservation."
    sleep(1)
    puts "Press enter to continue..."
    gets
  end

  def run()
      get_cancelling_bike
      confirm_cancellation
  end
end