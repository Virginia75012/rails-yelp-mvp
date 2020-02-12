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
justine = { name: 'Justine', address: '15 rue Oberkampf, 75011 Paris', phone_number: '0102030405', category: 'italian' }
pekinois =  { name: 'Le Petit Pékinois', address: '33 rue de Belleville, 75020 Paris', phone_number: '0102030406', category: 'chinese' }
baraque_frites =  { name: 'La Baraque à frites', address: '33 avenue du Trône, 75012 Paris', phone_number: '0105030406', category: 'belgian' }
sakura =  { name: 'Sakura', address: '66 rue de Rivoli, 75001 Paris', phone_number: '0109030406', category: 'japanese' }
canailles = { name: 'Les Canailles de Ménilmontant', address: '15 rue des Panoyaux, 75020 Paris', phone_number: '0105070406', category: 'french' }

[justine, pekinois, baraque_frites, sakura, canailles].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished'
