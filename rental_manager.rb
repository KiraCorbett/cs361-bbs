

class RentalManager

    attr_accessor :customer_bikes

    def initialize()
        @rented_bikes = Hash.new
    end

    def add_customer_bikes(customer, bikes)
        @rented_bikes[customer] = bikes
    end

    def number_of_bikes(customer)
        @rented_bikes[customer].length
    end
end