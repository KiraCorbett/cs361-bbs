
require_relative 'bike_rental_database'
require_relative 'test_database'

class ManagerChecksRentalDatabase
puts("summary report information")

b = TestDatabase.new()
b.run()

end
