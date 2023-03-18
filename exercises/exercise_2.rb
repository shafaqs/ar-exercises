require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Load the first store from the database and assign it to an instance variable
@store1 = Store.find_by(id: 1)

# Load the second store from the database and assign it to an instance variable
@store2 = Store.find_by(id: 2)

# Update the name of the first store instance
@store1.update(name: "Bangtan")

# Output the name of the first and second store
puts @store1.name
puts @store2.name
