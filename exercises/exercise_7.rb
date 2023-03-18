require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
# prompt the user for a store name
print "Enter store name: "
store_name = gets.chomp

# create a new store with the given name
store = Store.new(name: store_name)

# attempt to save the new store
if store.save
  puts "Store created successfully!"
else
  # display any error messages returned by ActiveRecord
  store.errors.full_messages.each do |message|
    puts message
  end
end

