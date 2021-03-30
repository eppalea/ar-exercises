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
puts "Please provide me with a store name."
@reply = gets.chomp.to_s

store_request = Store.create(name: @reply)
puts store_request.errors.full_messages