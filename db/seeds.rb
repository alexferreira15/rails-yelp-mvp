# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
bk = {name: "BK", address: "No do Fojo", category: "french", phone_number: "123456789"}
mc = {name: "MC", address: "Vila do Conde", category: "chinese"}
pizza = {name: "Pizza", address: "Póvoa de Varzim", category: "italian", phone_number: "123456789"}
kebab = {name: "Kebab", address: "Viana do Castelo", category: "japanese"}
massa = {name: "Massa", address: "Porto", category: "belgian"}

[bk, mc, pizza, kebab, massa].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
