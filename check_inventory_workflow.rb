require_relative 'bike_type_inventory_manager'

class CheckBikeTypeInventoryWorkflow

  def initialize()
    @inventory = BikeTypeInventoryManager.new()
  end

  def welcome()
    puts "Hi There, Mr.Manager!"
    puts "Here's all of the bikes we have in stock, the number currently"
    puts "available and then total number of that type of bike we have!"
    puts "..."
  end

  def check_inventory() # knows to much
    puts "--------------------------------"
    puts "%-10s|%10s |%7s" % ["BIKE TYPE", "AVAILABLE", "TOTAL"]
    puts "--------------------------------"
    @inventory.display_detailed_bike_type_inventory
  end

  def run()
    welcome
    check_inventory
  end

end
