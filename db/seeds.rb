require 'json'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "recuperons les mariages saisis en dur ..."

wedding1 = Wedding.new({
  title: "Traditionnel",
  description: "Mariage traditionnel en Bourgogne",
  capacity: 33,
  user_id: 7,
  date: Date.new,
  location: "Bourgogne",
  photo: 'https://picsum.photos/200/300/?random'
  })

wedding2 = Wedding.new({
  title: "Traditionnel",
  description: "Célébrons notre amour dans un château",
  capacity: 33,
  user_id: 7,
  date: Date.new,
  location: "Orléans",
  })

# wedding3 = Wedding.create({
#   title: "Chic",
#   description: "Cérémonie chic, thème Blanc",
#   capacity: 33,
#   user_id: 7,
#   date: Date.new,
#   location: "Versailles",
#   photo: 'https://picsum.photos/200/300/?random'
#   })

# wedding4 = Wedding.create({
#   title: "Populaire",
#   description: "A la bonne franquette",
#   capacity: 33,
#   user_id: 7,
#   date: Date.new,
#   location: "Berry",
#   photo: 'https://picsum.photos/200/300/?random'
#   })

# wedding5 = Wedding.create({
#   title: "Chic",
#   description: "Piscine, Champagne",
#   capacity: 33,
#   user_id: 7,
#   date: Date.new,
#   location: "Ecully",
#   photo: 'https://picsum.photos/200/300/?random'
#   })

# wedding6 = Wedding.create({
#   title: "Libertin",
#   description: "Interdit -18 ans",
#   capacity: 33,
#   user_id: 7,
#   date: Date.new,
#   location: "Les chandelles",
#   photo: 'https://picsum.photos/200/300/?random'
#   })

# puts "7 mariage créés"

if wedding1.save
  puts "wedding 1 saved"
else
  puts "wedding 1 not saved"
end


puts "seed done !"
