# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', category: 'french' }
pizza_east =  { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', category: 'italian' }
wayo_wayo = { name: 'Wayo Wayo', address: 'Les Halles Bacalan, Bordeaux', category: 'french' }
frida = { name: 'Frida', address: 'Rue de la grosse cloche, Bordeaux', category: 'belgian' }
hutong = { name: 'Hutong', address: 'rue du tondu, Bordeaux', category: 'japanese' }

[dishoom, pizza_east, wayo_wayo, frida, hutong].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
