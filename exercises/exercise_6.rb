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
@store1.employees.create(first_name: "Cam1", last_name: "123", hourly_rate: 61)
@store1.employees.create(first_name: "Cam2", last_name: "456", hourly_rate: 62)
@store2.employees.create(first_name: "Cam3", last_name: "789", hourly_rate: 63)
@store2.employees.create(first_name: "Cam4", last_name: "012", hourly_rate: 64)
@store2.employees.create(first_name: "Cam5", last_name: "345", hourly_rate: 65)
