require_relative 'test_database'

class ManagerChecksRentalDatabase
puts("summary report/rental database information")

b = TestDatabase.new()
b.run()

end
