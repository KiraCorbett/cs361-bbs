
require_relative 'bike_rental_database'
require_relative 'test_database'

class ManagerChecksRentalDatabase
puts("summary report/rental database information")

b = TestDatabase.new()
b.run()

end
