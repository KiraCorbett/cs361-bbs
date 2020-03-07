require_relative 'inventory_summary'

class DisplayInventorySummaryWorkflow

  def initialize()
    @inventory = InventorySummary.new()
  end
   
  def welcome()
    puts "Hi There, Mr.Manager!"
    puts "Here's a Retport of the Rentalable items we have in stock, the number currently"
    puts "available and then total number of that type of that item we have!"
    puts "..."
  end

  def display_inventory()
    puts "--------------------------------"
    puts "%-12s|%10s |%7s" % ["RENTAL TYPE", "AVAILABLE", "TOTAL"]
    puts "--------------------------------"
    @inventory.display_detailed_rental_type_inventory
  end

  def run()
    welcome
    display_inventory
  end

end
