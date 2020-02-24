

class RentalManager

  attr_accessor :rented_bikes

  def initialize()
    @rented_bikes = Hash.new
  end

  def add_customer_bikes(customer, bikes)
    @rented_bikes[customer] = bikes
  end

  def find_bike(customer, id)
    @rented_bikes[customer].each do |i|
      if i.id == id
        return i.name
      end
    end
  end

  def select_bike(isCancel)
    cancelling = ' '

    if isCancel
      cancelling = 'cancelling'
    else
      cancelling = 'returning'
    end

    puts 'Which bike are you' + cancelling? + '? (Please enter the bike ID)'
    id = gets.strip.chomp
    puts 'Returning ' + find_bike(@customer.name, id) + '...'
    sleep(1)
    return_bike(@customer.name, id)
  end

  def return_bike(customer, id)
  	@rented_bikes[customer].each do |i|
    	if i.id == id
        @rented_bikes[customer].delete(i)
        break
      end
    end
  end

  def number_of_bikes(customer)
    @rented_bikes[customer].length
  end

  def print_bikes(customer)
    str = "("
    @rented_bikes[customer].each do |i|
      str += " " + i.name + " (ID: " + i.id + "),"
    end
    str = str.chomp(",")
    str += " )"
  end
end