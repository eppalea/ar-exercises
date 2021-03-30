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
class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, presence: true
  validates_inclusion_of :hourly_rate, :in => 40..200
  validates :store_id, presence: true
end

class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
end

puts "Please provide me with a store name."
@reply = gets.chomp.to_s

store_request = Store.create(name: @reply)
puts store_request.errors.full_messages