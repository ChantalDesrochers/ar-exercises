require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
surrey = Store.new(name: "surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
whistler = Store.new(name: "whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
yaletown = Store.new(name: "yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel:true)
surrey.save
whistler.save
yaletown.save
puts Store.count


@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each { |store| puts "this is a man's store #{store}, the revenue is #{store.annual_revenue} and the name is #{store.name}"}

# @mens_stores

# @small_womens_stores = Store.where(womens_apparel: true, annual_revenue < 1000000)
# @small_womens_stores = Store.where("annual_revenue < '1000000'", womens_apparel: true)
@small_womens_stores = Store.where("annual_revenue < '1000000' AND womens_apparel= true")

@small_womens_stores.each { |store| puts "this is a woman's store? #{store.womens_apparel}, the revenue is #{store.annual_revenue} and the name is #{store.name}"}

# puts @small_womens_stores