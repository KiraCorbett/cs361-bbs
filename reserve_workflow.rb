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
    inputted_bike_type = gets.strip.chomp
    @rental.check_inventory(inputted_bike_type)
  end

 def display_inventory_with_message
   puts("Our inventory includes the following: ")
   @rental.display_all_inventory
 end

  def run()
  	welcome
    display_inventory_with_message
    get_bike_type
  end

end
