require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
class Store < ActiveRecord::Base
has_many :employees
end

burnaby = Store.new(name: "burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
richmond = Store.new(name: "richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)
gastown = Store.new(name: "gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel:false)
burnaby.save
richmond.save
gastown.save
puts Store.count