require_relative 'bike_type'

class InventoryManager

  attr_accessor :type

	def initialize()
		@inventory = [BikeType.new("Road"),BikeType.new("Mountain"),BikeType.new("Cross"),BikeType.new("Unicycle"),BikeType.new("Tricycle"),BikeType.new("High Wheel")]
	end

	def check_inventory(inputted_bike_type)
		return @inventory.any? {|bike| bike.name = inputted_bike_type}
  end

	def display_all_inventory()
		@inventory.each {|bike| puts bike.name}
    puts "..."
  end

  def display_detailed_inventory()
    @inventory.each {|bike| puts "%-10s|%10d |%7d" % [bike.name, bike.available, bike.total]}
  end

  def add_to_inventory(x)
		 @inventory << x
  end
end