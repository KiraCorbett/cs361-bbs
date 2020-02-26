class BikeType

  attr_accessor :name, :available, :total
  
  def initialize(name)
    @name = name
    @available = rand(0..10)
    @total = rand(10..40)
  end

end
