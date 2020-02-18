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
		id = gets.strip.chomp
		puts 'Returning ' + @rental.find_bike(@customer.name, id) + '...'
		sleep(1)
		@rental.return_bike(@customer.name, id)
		return id
	end

	def calculate_rental_fee() 
		puts "You have returned this bike on time."
		sleep(1)
		puts "You have been charged $30."
		sleep(1)
	end

	def print_farewell()
		puts "Thank you for using Bend Bike Shop!"
		puts "Press enter to continue..."
		gets
		puts ""
	end

	def run()
		print_greeting()
		id = get_returning_bike()
		calculate_rental_fee()
		print_farewell()
	end
end
