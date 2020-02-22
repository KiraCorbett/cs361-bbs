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
				# the line below might be an SRP violation
				# this isn't really checking inventory it is adding something
				Bike.new(rand(1..99), inputted_bike_type)

				found_type = true
        end
			end

			if found_type == false
				puts("Not in inventory :(")
				end
    end

	def display_all_inventory()
		@inventory.each { |x| puts x}
   end

	 def add_to_inventory(x)
		 @inventory << x
	 end
 end
