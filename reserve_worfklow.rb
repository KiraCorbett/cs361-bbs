#main
require 'customer'
require 'bike'
require 'rental'

class ReserveWorkflow
  def initialize ()
   @customer = Customer.new('Joe')
   @bike = Bike.new('123','coolBikes','red')
   @rental = Rental.new()
  end
#one customer one bike

end
