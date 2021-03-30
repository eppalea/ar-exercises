require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
# create 3 more store
store = Store.create(name: "Surrey", annual_revenue: "224000", mens_apparel: false, womens_apparel: true)
store = Store.create(name: "Whistler", annual_revenue: "1900000", mens_apparel: true, womens_apparel: false)
store = Store.create(name: "Yaletown", annual_revenue: "430000", mens_apparel: true, womens_apparel: true)

# Using the where class method from Active Record, fetch (a collection of) only those stores that carry men's apparel. Assign the results to a variable @mens_stores.
@mens_stores = Store.where(mens_apparel: true)
# Loop through each of these stores and output their name and annual revenue on each line.
@mens_stores.each do |m|
  puts m.name
  puts m.annual_revenue
end

# load stores that carry women's apparel and are generating less than $1M in annual revenue.
@womens_stores = Store.where(womens_apparel: true, annual_revenue: 0..1000000)
@womens_stores.each do |w|
  puts w.name
  puts w.annual_revenue
end