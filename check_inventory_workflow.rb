require_relative 'inventory_manager'

class CheckInventoryWorkflow

  def initialize()
    @inventory = InventoryManager.new()
  end

  def welcome()
    puts "Hi There, Mr.Manager!"
    puts "Here's all of the bikes we have in stock, the number currently"
    puts "available and then total number of that type of bike we have!"
    puts "..."
  end

  def run()
    welcome
  end

end