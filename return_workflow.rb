require_relative 'bike'
require_relative 'customer'
require_relative 'rental_manager'
require_relative 'end_rental_workflow'

class ReturnWorkflow < EndRentalWorkflow

  attr_accessor :customer, :rental

  def get_returning_bike()
    @rental.select_bike(@customer.name)
  end

  def calculate_rental_fee() 
    puts "You have returned this bike on time."
    sleep(1)
    puts "You have been charged $30."
    sleep(1)
    puts "Press enter to continue..."
    gets
  end

  def print_farewell()
    puts "All bikes have been returned."
    sleep(1)
    puts "Thank you for using Bend Bike Shop!"
  end

  def run()
    while @rental.number_of_bikes(@customer.name) > 0
      print_greeting
      get_returning_bike
      calculate_rental_fee
    end

    print_farewell
  end
end
