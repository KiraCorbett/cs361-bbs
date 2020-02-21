require_relative 'customer'
require_relative 'bike'
require_relative 'inventory_manager'

class ReserveWorkflow
  def initialize ()
   @customer = Customer.new('Joe')
   @rental = InventoryManager.new
  end

  def welcome()
  	puts("Welcome to Bend Bike Shop!")
  end

  def get_bike_type()
    puts("What type of bike would you like to reserve?")
    type = gets.strip.chomp
    @rental.check_inventory(type)
  end

  def run()
  	welcome
    get_bike_type
  end

end
