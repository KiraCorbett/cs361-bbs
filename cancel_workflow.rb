require_relative 'test_database'

class CancellationWorkflow

  def initialize()
<<<<<<< HEAD
    @test_database = TestDatabase.new
  end

  def get_reservation()
    @test_database.print_all_rentals
    puts 'Which reservation would you like to cancel? (Please enter the Rental ID.)'
    reservation_input = gets.strip.chomp

      if reservation_input.to_i.to_s == reservation_input
        puts 'Cancelling reservation ' + reservation_input
        @test_database.cancel_reservation
        sleep(1)
        #@rental_database.print_all_rentals
      else 
        puts reservation_input + ' is not a valid reservation!'
        puts "..."
        get_reservation
      end
=======
    @customer = Customer.new('Shirai')
    @rental = RentalManager.new
    @rental.add_customer_rental(@customer.name, [Bike.new('01', 'Mountain Bike'), \
    Bike.new('02', 'Road Bike'), \
    Bike.new('03', 'Triathlon Bike')])
  end

  def print_greeting()
    puts 'Hello ' + @customer.name + ','
    puts 'You have ' + @rental.number_of_rentals(@customer.name).to_s + ' rented bikes.'
    puts @rental.print_rentals(@customer.name)
  end

  def get_cancelling_rental()
    puts 'Which reservation would you like to cancel?'
    @rental.select_rental(@customer.name)
>>>>>>> 05-kayak-return-flow
  end

  def confirm_cancellation() 
    puts 'You have cancelled this reservation.'
    sleep(1)
    puts 'Thank you for visiting the Bend Bike Shop!'
  end

  def run()
<<<<<<< HEAD
      get_reservation
=======
    while @rental.number_of_rentals(@customer.name) > 0
      print_greeting
      get_cancelling_rental
>>>>>>> 05-kayak-return-flow
      confirm_cancellation
  end
end