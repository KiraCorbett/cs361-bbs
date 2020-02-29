require_relative bike_type
class BikeRental

 def initialize(bike_type_name)
   @bike_type = bike_type.new(bike_type_name)

 end

end
