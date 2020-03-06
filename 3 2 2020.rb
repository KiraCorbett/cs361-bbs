#josh cook
class AbstractBike

  def initialize
    puts 'No! Raise an error to prevent instantiation.'
  end

  def prepare
    puts 'Pumping air in tires...'
    puts 'Cleaning it up...'
    adjust
    puts 'Ready!'
  end

end

class BmxBike < AbstractBike
  def initialize;end

  end
  def adjust
    puts 'Adjusting seat....'
  end



class RoadBike < AbstractBike
def initialize;end
  def adjust
    puts 'Adjusting the chain...'
  end

end

class MountainBike < AbstractBike
def initialize;end
  def adjust
    puts 'Adjusting suspension...'
  end

end

class Tricycle < AbstractBike
def initialize;end
  def adjust
    puts 'Lubricating the bell...'
  end

end

bmx_bike = BmxBike.new
bmx_bike.adjust_seat
bmx_bike.prepare

road_bike = RoadBike.new
road_bike.adjust_chain
road_bike.prepare

mountain_bike = MountainBike.new
mountain_bike.adjust_suspension
mountain_bike.prepare

tricycle = Tricycle.new
tricycle.lubricate_bell
tricycle.prepare
