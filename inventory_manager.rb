class InventoryManager
	attr_accessor :type

	def initialize()
		@inventory = ["Road","Mountain","Cross","Unicycle","Tricycle", "High Wheel"]
	end

	def check_inventory(inputted_bike_type)
		#FIXED
    found_type = false
		@inventory.each do |i|
			if i == inputted_bike_type
				puts("excilent choice!")
				Bike.new(rand(1..99), inputted_bike_type)
				found_type = true
        end
			end

			if found_type == false
				puts("Not in inventory :(")
				#break
				end
    end

	def display_all_inventory()
		@inventory.each { |x| puts x}
   end
 end
