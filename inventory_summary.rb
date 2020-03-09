require_relative 'rental_type'

class InventorySummary
  #the old name "inventory" was not descriptive enough
  attr_accessor :type

	def initialize()
		@bike_inventory = [RentalType.new("Road"), RentalType.new("Mountain"), RentalType.new("Cross"), RentalType.new("Unicycle"), RentalType.new("Tricycle"), RentalType.new("High Wheel")]
    @kayak_inventory = [RentalType.new("Racing"), RentalType.new("Fishing"), RentalType.new("Diving")]
    @inventory = @kayak_inventory + @bike_inventory
	  @rental_type = ["Bike", "Kayak"]
  end

  def display_inventory_type()
    @rental_type.each {|type| puts type }
  end

	def check_rental_type_inventory(inputted_rental_type)
		return @inventory.any? {|rentalType| rentalType.name = inputted_rental_type}
  end

	def display_all_rental_type_inventory(type)
		if type == "Bike"
      @inventory.each {|rentalType| puts rentalType.name}
    elsif type = "Kayak"
      @inventory.each {|rentalType| puts rentalType.name}
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
