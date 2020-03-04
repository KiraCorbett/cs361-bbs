require_relative 'bike'
require_relative 'customer'
require_relative 'rental_manager'

class EndRentalWorkflow

  def initialize()
    @customer = Customer.new('Shirai')
    @rental = RentalManager.new
    @rental.add_customer_bikes(@customer.name, [Bike.new('01', 'Mountain Bike'), \
    Bike.new('02', 'Road Bike'), \
    Bike.new('03', 'Triathlon Bike')])
  end

end
