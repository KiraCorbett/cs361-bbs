require_relative 'rental_type'

class InventorySummary
  #the old name "inventory" was not descriptive enough
  attr_accessor :type

	def initialize()
		@inventory = [RentalType.new("Road"),RentalType.new("Mountain"),RentalType.new("Cross"),RentalType.new("Unicycle"),RentalType.new("Tricycle"),RentalType.new("High Wheel")]
	end

	def check_rental_type_inventory(inputted_rental_type)
		return @inventory.any? {|rentalType| rentalType.name = inputted_rental_type}
  end

	def display_all_rental_type_inventory()
		@inventory.each {|rentalType| puts bike.name}
    puts "..."
  end

  def display_detailed_rental_type_inventory()
    @inventory.each {|rentalType| puts "%-10s|%10d |%7d" % [rentalType.name, rentalType.available, rentalType.total]}
  end

  def add_to_rental_rental_inventory(x)
		 @inventory << x
  end
end
