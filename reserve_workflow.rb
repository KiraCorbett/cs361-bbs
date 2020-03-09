require_relative 'customer'
require_relative 'bike'
require_relative 'kayak'
require_relative 'inventory_summary'

class ReserveWorkflow

  def initialize()
   @rental = InventorySummary.new
  end

  def welcome()
  	puts "Welcome to Bend Bike Shop!"
  end

  def get_rental_category()
    puts "Here's a selection of the rental categories we currently have to choose from!"
    @rental.display_inventory_type
    inputted_rental_category = gets.strip.chomp 
    if @rental.rental_category.include? inputted_rental_category
      display_inventory_with_message(inputted_rental_category)
    else
      puts "Please try again..."
      get_rental_category
    end
  end

  def display_inventory_with_message(rental_category)
   puts "Our inventory includes the following: "
   @rental.display_rental_type_inventory(rental_category)
   get_rental_type(rental_category)
  end

  def get_rental_type(rental_category)
    puts "What type of "+rental_category+" would you like to reserve?"
    inputted_rental_type = gets.strip.chomp
    if rental_category == "Kayak"
      if @rental.check_rental_type_inventory(inputted_rental_type)
        reserve_rental(inputted_rental_type)
      elsif @rental.check_rental_type_inventory(inputted_rental_type)
        reserve_rental(inputted_rental_type)
      end
    else
      puts inputted_rental_type + ' is not a valid '+rental_category+'!'
      puts "..."
      get_rental_type
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
    get_rental_category
  end
end
