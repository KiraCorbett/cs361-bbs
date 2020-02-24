require_relative 'customer'
require_relative 'rental_manager'

class CancellationWorkflow

  def get_cancelling_bike()
    @rental.select_bike(True)
  end
end