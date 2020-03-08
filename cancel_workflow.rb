require_relative 'test_database'
require_relative 'bike'
require_relative 'customer'
require_relative 'rental_manager'

class CancellationWorkflow

  def initialize()
    @customer = Customer.new('Shirai')
    @rental = RentalManager.new
    @rental.add_customer_rental(@customer.name, [Bike.new('01', 'Mountain Bike'), \
    Bike.new('02', 'Road Bike'), \
    Bike.new('03', 'Triathlon Bike')])
  end

  def print_greeting()
    puts 'Hello ' + @customer.name + ','
    puts 'You have ' + @rental.number_of_rentals(@customer.name).to_s + ' rented bikes.'
    puts @rental.print_rentals(@customer.name)
  end

  def get_cancelling_rental()
    puts 'Which reservation would you like to cancel?'
    @rental.select_rental(@customer.name)
  end

  def confirm_cancellation() 
    puts 'You have cancelled this reservation.'
    sleep(1)
    puts 'Thank you for visiting the Bend Bike Shop!'
  end

  def run()
    while @rental.number_of_rentals(@customer.name) > 0
      print_greeting
      get_cancelling_rental
      confirm_cancellation
    end
  end
end