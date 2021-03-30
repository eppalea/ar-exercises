require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
# Add the following code directly inside the Store model (class): has_many :employees
class Store < ActiveRecord::Base
  has_many :employees
end

#Add the following code directly inside the Employee model (class): belongs_to :store
class Employee < ActiveRecord::Base
  belongs_to :store
end

# Add some data into employees nd create some more employees using the create method.
@store1.employees.create(first_name: "Summer", last_name: "Acacia", hourly_rate: 40)
@store1.employees.create(first_name: "Jack", last_name: "Hill", hourly_rate: 30)
@store2.employees.create(first_name: "Jill", last_name: "Brown", hourly_rate: 35)
@store2.employees.create(first_name: "Ryan", last_name: "Lyons", hourly_rate: 42)
@store2.employees.create(first_name: "Mike", last_name: "McDonald", hourly_rate: 59)
@store1.employees.create(first_name: "Adam", last_name: "Peters", hourly_rate: 75)