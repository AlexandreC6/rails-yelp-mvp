# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
# 10.times do
#   Article.create(title: Faker::Book.title,
#     content: Faker::Lorem.characters(number: 10))
# end

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "italian", phone_number:"01 02 03 04" }
pizza_east =  { name: "Pizza East", address: "56E Shoreditch High St, London E1 6PQ", category: "chinese", phone_number:"01 02 03 04" }
pizza_north =  { name: "Pizza North", address: "12N Shoreditch High St, London E1 6PQ", category: "french", phone_number:"01 02 03 04" }
pizza_south =  { name: "Pizza South", address: "100S Shoreditch High St, London E1 6PQ", category: "japanese", phone_number:"01 02 03 04" }
pizza_west =  { name: "Pizza West", address: "98W Shoreditch High St, London E1 6PQ", category: "belgian", phone_number:"01 02 03 04" }

[ dishoom, pizza_east, pizza_north, pizza_south, pizza_west ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
