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
puts "please enter a store name:"
name = gets.chomp
example = Store.create(name: name, mens_apparel: false, womens_apparel: true, annual_revenue: 10)
puts example.errors.full_messages

