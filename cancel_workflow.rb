require_relative 'bike'
require_relative 'customer'
require_relative 'rental_manager'

class CancellationWorkflow

  attr_accessor :customer, :rental

  def initialize()
    @customer = Customer.new('Shirai')
    @rental = RentalManager.new
    @rental.add_customer_bikes(@customer.name, [Bike.new('01', 'Mountain Bike'), \
    Bike.new('02', 'Road Bike'), \
    Bike.new('03', 'Triathlon Bike')])
  end

  def print_greeting()
    puts 'Hello ' + @customer.name + ','
    puts 'You have ' + @rental.number_of_bikes(@customer.name).to_s + ' rented bikes.'
    puts @rental.print_bikes(@customer.name)
  end

  def get_cancelling_bike()
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