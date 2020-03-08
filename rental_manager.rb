class RentalManager

  attr_accessor :rented_bikes

  def initialize()
    @rented_inventory = Hash.new
  end

  def add_customer_rental(customer, rental)
    @rented_inventory[customer] = rental
  end

  def find_rental(customer, id)
    @rented_inventory[customer].each do |i|
      if i.id == id
        return i.name
      end
    end
  end

  def select_rental(customer)
    id = gets.strip.chomp
    puts 'Finding ' + find_rental(customer, id) + '...'
    sleep(1)
    return_rental(customer, id)
  end

  def return_rental(customer, id)
  	@rented_inventory[customer].each do |i|
    	if i.id == id
        @rented_inventory[customer].delete(i)
        break
      end
    end
  end

  def number_of_rentals(customer)
    @rented_inventory[customer].length
  end

  def print_rentals(customer)
    str = "("
    @rented_inventory[customer].each do |i|
      str += " " + i.name + " (ID: " + i.id + "),"
    end
    str = str.chomp(",")
    str += " )"
  end
end
