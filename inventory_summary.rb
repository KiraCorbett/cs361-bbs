require_relative 'rental_type'

class InventorySummary
  #the old name "inventory" was not descriptive enough
  attr_accessor :rental_category

	def initialize()
		@bike_inventory = [RentalType.new("Road"), RentalType.new("Mountain"), RentalType.new("Cross"), RentalType.new("Unicycle"), RentalType.new("Tricycle"), RentalType.new("High Wheel")]
    @kayak_inventory = [RentalType.new("Racing"), RentalType.new("Fishing"), RentalType.new("Diving")]
    @inventory = @kayak_inventory + @bike_inventory
	  @rental_category = ["Bike", "Kayak"]
  end

  def display_inventory_type()
    @rental_category.each {|type| puts type }
  end

	def check_rental_type_inventory(inputted_rental_type, rental_category)
    if(rental_category == "Kayak")
		  return @inventory.any? {|rentalType| rentalType.name = inputted_rental_type}
    elsif (rental_category == "Bike")
      return @inventory.any? {|rentalType| rentalType.name = inputted_rental_type}
    end
  end

	def display_rental_type_inventory(rental_category)
		if rental_category == "Bike"
      @bike_inventory.each {|rentalType| puts rentalType.name}
    elsif rental_category == "Kayak"
      @kayak_inventory.each {|rentalType| puts rentalType.name}
    end
    puts "..."
  end

  def display_detailed_rental_type_inventory()
    @inventory.each {|rentalType| puts "%-12s|%10d |%7d" % [rentalType.name, rentalType.available, rentalType.total]}
  end

  def add_to_rental_rental_inventory(x)
		 @inventory << x
  end
end
#
