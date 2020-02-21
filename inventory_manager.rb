class InventoryManager
	attr_accessor :type

	def initialize()
		@inventory = ["Road","Mountain","Cross","Unicycle","Tricycle", "High Wheel"]
	end

	def check_inventory(type)
		#FIX THIS CHECKING OF TYPE IN INVENTORY ARRAY
		@inventory.each do |i|
			if i == type
				Bike.new(rand(1..99), type)
				break
			else
				puts("Not in inventory :(")
				break
			end
		end
	end
end