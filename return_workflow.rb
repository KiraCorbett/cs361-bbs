require_relative 'bike'
require_relative 'customer'
require_relative 'rental_manager'
require_relative 'kayak'

class ReturnWorkflow

  attr_accessor :customer, :rental

  def initialize()
    @customer = Customer.new('Shirai')
    @rental = RentalManager.new
    @rental.add_customer_rental(@customer.name, [Bike.new('01', 'Mountain Bike'), \
    Bike.new('02', 'Road Bike'), \
    Bike.new('03', 'Triathlon Bike'), \
    Kayak.new('04', 'Red Kayak'), \
    Kayak.new('05', 'Blue Kayak')])
  end

  def print_greeting()
    puts 'Hello ' + @customer.name + ','
    puts 'You have ' + @rental.number_of_rentals(@customer.name).to_s + ' rented vehicles.'
    puts @rental.print_rentals(@customer.name)
  end

  def get_returning_rental()
    @rental.select_rental(@customer.name)
  end

  def calculate_rental_fee() 
    puts "You have returned this on time."
    sleep(1)
    puts "You have been charged $30."
    sleep(1)
    puts "Press enter to continue..."
    gets
  end

  def print_farewell()
    puts "All vehicles have been returned."
    sleep(1)
    puts "Thank you for using Bend Bike Shop!"
  end

  def run()
    while @rental.number_of_rentals(@customer.name) > 0
      print_greeting
      get_returning_rental
      calculate_rental_fee
    end

    print_farewell
  end
end
