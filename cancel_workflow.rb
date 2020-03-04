require_relative 'bike'
require_relative 'customer'
require_relative 'rental_manager'
require_relative 'end_rental_workflow'

class CancellationWorkflow < EndRentalWorkflow

  def get_cancelling_bike()
    puts 'Which reservation would you like to cancel?'
    @rental.select_bike(@customer.name)
  end

  def confirm_cancellation() 
    puts "You have cancelled this bike reservation."
    sleep(1)
    puts "Press enter to continue..."
    gets
  end

  def run()
    while @rental.number_of_bikes(@customer.name) > 0
      print_greeting
      get_cancelling_bike
      confirm_cancellation
    end
  end
end