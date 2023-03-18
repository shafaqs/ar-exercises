require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Create new stores
Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

# Fetch stores that carry men's apparel only
@mens_stores = Store.where(mens_apparel: true)

# Output names and annual revenue of men's stores
puts "Men's stores:"
@mens_stores.each do |store|
  puts "#{store.name}: #{store.annual_revenue}"
end

# Fetch women's stores with annual revenue less than $1M
@womens_stores = Store.where(womens_apparel: true, annual_revenue: 0..999999)

# Output names and annual revenue of women's stores
puts "Women's stores with annual revenue less than $1M:"
@womens_stores.each do |store|
  puts "#{store.name}: #{store.annual_revenue}"
end
