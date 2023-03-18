require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Total revenue for the entire company
total_revenue = Store.sum(:annual_revenue)
puts "Total revenue: #{total_revenue}"

# Average annual revenue for all stores
average_revenue = Store.average(:annual_revenue)
puts "Average annual revenue: #{average_revenue}"

# Number of stores generating $1M or more in annual sales
high_revenue_stores_count = Store.where("annual_revenue >= ?", 1000000).count
puts "Number of stores generating $1M or more in annual sales: #{high_revenue_stores_count}"
