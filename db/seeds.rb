# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7,Rue corneille Floirac", phone_number: 0534543322, category: "italian" }
pizza_east =  { name: "Pizza East", address: "9,Rue lormont Bordeaux", phone_number: 0534123456, category: "italian" }
toto = { name: "Toto", address: "10,Rue cenon Bordeaux", phone_number: 0534542132, category: "japanese" }
jacki =  { name: "Jacki", address: "1,Rue meriadek Bordeaux", phone_number: 0534540000, category: "japanese"}
ahmed = { name: "Ahmed", address: "5,Rue alex Bordeaux", phone_number: 0560042132, category: "french"}
riri =  { name: "Riri", address: "6,Rue rim Bordeaux", phone_number: 0554542132, category: "belgian"}
[ dishoom, pizza_east, toto, jacki, ahmed, riri ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
