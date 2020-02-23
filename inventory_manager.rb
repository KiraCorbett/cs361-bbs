class InventoryManager
	attr_accessor :type

	def initialize()
		@inventory = ["Road","Mountain","Cross","Unicycle","Tricycle", "High Wheel"]
	end

	def check_inventory(inputted_bike_type)
    found_type = false
		if @inventory.include? inputted_bike_type
      return true
    else
      return false
    end
  end

	def display_all_inventory()
		@inventory.each { |x| puts x}
    puts "..."
  end

  def add_to_inventory(x)
		 @inventory << x
  end
end