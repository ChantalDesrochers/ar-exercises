require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Employee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Mister", last_name: "Man", hourly_rate: 30)
@store1.employees.create(first_name: "Miss", last_name: "Lady", hourly_rate: 40)
@store1.employees.create(first_name: "Grandpa", last_name: "Pops", hourly_rate: 20)
@store2.employees.create(first_name: "Grandma", last_name: "Nana", hourly_rate: 100)
@store2.employees.create(first_name: "Little", last_name: "Kiddie", hourly_rate: 50)
@store2.employees.create(first_name: "Puppy", last_name: "Dog", hourly_rate: 70)


puts Employee.count