require_relative 'bike'
require_relative 'customer'
require_relative 'rental_manager'

class ReturnWorkflow

	attr_accessor :customer, :rental

	def initialize()
		@customer = Customer.new('Shirai')
		@rental = RentalManager.new
		@rental.add_customer_bikes(@customer.name, [Bike.new('01', 'Mountain Bike'), \
		Bike.new('02', 'Road Bike'), \
		Bike.new('03', 'Triathlon Bike')])
	end

	def print_greeting()
		puts 'Hello ' + @customer.name + ','
		puts 'You have ' + @rental.number_of_bikes(@customer.name).to_s + ' rented bikes.'
		puts @rental.print_bikes(@customer.name)
	end

	def get_returning_bike()
		puts 'Which bike are you returning? (Please enter the bike ID)'
		gets.strip.chomp
	end

	def run()
		print_greeting()
		get_returning_bike()
		id = get_returning_bike()
	end
end
