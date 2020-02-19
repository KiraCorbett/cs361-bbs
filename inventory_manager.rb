class InventoryManager
	attr_accessor
	inventory = ["Road","Mountain","Cross","Unicycle","Tricycle", "High Wheel"]

	def initialize(type)
		@type = type
	end

	def check_inventory
		if inventory.include? 'type'
			bike.new(01, type)
		else
			puts("Not in inventory! :(")
		end
	end
end