require_relative 'customer'
require_relative 'bike'
require_relative 'rental'
require_relative 'inventory_manager'

class ReserveWorkflow
  def initialize ()
   @customer = Customer.new('Joe')
   @bike = Bike.new('123','coolBikes')
   @rental = Rental.new()
  end

  def Welcome
  	puts("Welcome to Bend Bike Shop!")
  	puts("What type of bike would you like to reserve?")
  	
  end

end
