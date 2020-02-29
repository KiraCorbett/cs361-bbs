require_relative 'bike_type'

class BikeTypeInventoryManager
  #the old name "inventory" was not descriptive enough
  attr_accessor :type

	def initialize()
		@inventory = [BikeType.new("Road"),BikeType.new("Mountain"),BikeType.new("Cross"),BikeType.new("Unicycle"),BikeType.new("Tricycle"),BikeType.new("High Wheel")]
	end

	def check_bike_type_inventory(inputted_bike_type)
		return @inventory.any? {|bike| bike.name = inputted_bike_type}
  end

	def display_all_bike_type_inventory()
		@inventory.each {|bike| puts bike.name}
    puts "..."
  end

  def display_detailed_bike_type_inventory()
    @inventory.each {|bike| puts "%-10s|%10d |%7d" % [bike.name, bike.available, bike.total]}
  end

  def add_to_bike_type_inventory(x)
		 @inventory << x
  end
end
