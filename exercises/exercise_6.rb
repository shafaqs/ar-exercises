require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Saad", last_name: "Khan", hourly_rate: 60)
@store1.employees.create(first_name: "Saud", last_name: "Kazim", hourly_rate: 60)
@store1.employees.create(first_name: "Fraz", last_name: "Munir", hourly_rate: 60)
@store2.employees.create(first_name: "Syed", last_name: "Wali", hourly_rate: 60)
@store2.employees.create(first_name: "Karim", last_name: "Agha", hourly_rate: 60)
@store2.employees.create(first_name: "Zain", last_name: "Shah", hourly_rate: 60)
