class BikeType

  attr_accessor :name, :available, :total, :expected_return_in_day, :expected_return_in_hour

  def initialize(name)
    @name = name
    @available = rand(0..10)
    @total = rand(10..40)
    @expected_return_in_hour = rand(1..10)
    @expected_return_in_day = rand(1..4)
  end
end
