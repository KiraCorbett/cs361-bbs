

class RentalManager

    attr_accessor :rented_bikes

    def initialize()
        @rented_bikes = Hash.new
    end

    def add_customer_bikes(customer, bikes)
        @rented_bikes[customer] = bikes
    end

    def number_of_bikes(customer)
        @rented_bikes[customer].length
    end

    def print_bikes(customer)
        str = "Rented Bikes:"
        @rented_bikes[customer].each do |i|
            str += " " + i.name + " (ID: " + i.id + "),"
        end
        str.chomp(",")
    end
end