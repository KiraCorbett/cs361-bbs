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

  def display_inventory_with_message
   puts("Our inventory includes the following: ")
   @rental.display_all_inventory
  end

  def get_bike_type()
    puts "What type of bike would you like to reserve?"
    inputted_bike_type = gets.strip.chomp
    if @rental.check_inventory(inputted_bike_type) == true
      reserve_bike(inputted_bike_type)
    else
      puts inputted_bike_type + ' is not a valid bike!'
      puts "..." 
      get_bike_type
    end
  end

 def reserve_bike(inputted_bike_type)
  id = rand(1..99)
  Bike.new(id, inputted_bike_type)
  puts "..."
  puts 'Your ' + inputted_bike_type +  ' bike has been reserved! '
  puts "The ID for your bike's reservation is " + id.to_s +  '! '
 end

 def get_reservation_request()
  puts "..."
  puts "Would you like to reserve another bike (Y or N?)"
  reservation_request = gets.strip.chomp.downcase

    case (reservation_request)
    when 'y'
      display_inventory_with_message
      get_bike_type
      get_reservation_request
    when 'n'
      puts "Thank you for visiting the Bend Bike Shop!"
    else
      puts "Please enter a valid request (Y or N)."
      get_reservation_request
    end
end

  def run()
  	welcome
    display_inventory_with_message
    get_bike_type
    get_reservation_request
  end

end
