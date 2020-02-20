require_relative 'customer'
require_relative 'bike'
require_relative 'inventory_manager'

class ReserveWorkflow
  def initialize ()
   @customer = Customer.new('Joe')
   @bike = Bike.new('123','coolBikes')
   @rental = Rental.new()
  end

  def welcome()
  	puts("Welcome to Bend Bike Shop!")
  	puts("What type of bike would you like to reserve?")
  end

  def run()
  	welcome
  end

end
