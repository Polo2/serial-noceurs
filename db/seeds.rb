require 'json'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "vider la data base des weddings"
Wedding.destroy_all

puts "vider la data base des users"
User.destroy_all

puts "recuperons 1 user, sans image d'avatar pour l'instant ..."

users = []

new_user_gerard = User.new({
    first_name: "test",
    last_name: "eur",
    birthday: Date.new(1950,1,1),
    location: "Bordeaux",
    email: "ger@ard.fr",
    password: "azerty",
    password_confirmation: "azerty",
    })

users << new_user_gerard

new_user_polo = User.new({
    first_name: "Paul",
    last_name: "de Bodi",
    birthday: Date.new(1986,3,4),
    location: "Lyon",
    email: "polo@bodi.fr",
    password: "333333",
    password_confirmation: "333333",
    })

users << new_user_polo

new_user_aurel = User.new({
    first_name: "Aurelie",
    last_name: "Dubs",
    birthday: Date.new(1983,1,31),
    location: "Venissieux",
    email: "aure@lie.fr",
    password: "222222",
    password_confirmation: "222222",
    })

users << new_user_aurel

new_user_horti = User.new({
    first_name: "Hor",
    last_name: "Titi",
    birthday: Date.new(1992,3,30),
    location: "Bourg-en-Bresse",
    email: "hor@titi.fr",
    password: "111111",
    password_confirmation: "111111",
    })

users << new_user_horti

users.each do |user|
  user.save
end

puts "#{users.length} seed-users créés"


puts "id horti : #{new_user_horti.id}"


wedding1 = Wedding.new({
  title: "Traditionnel",
  description: "Mariage traditionnel en Bourgogne",
  capacity: 33,
  user_id: 7,
  date: Date.new,
  location: "Bourgogne",
  photo_url: 'https://picsum.photos/200/300/?random'
  })

wedding2 = Wedding.new({
  title: "Traditionnel",
  description: "Célébrons notre amour dans un château",
  capacity: 33,
  user_id: 7,
  date: Date.new,
  location: "Orléans",
  })

wedding3 = Wedding.create({
  title: "Chic",
  description: "Cérémonie chic, thème Blanc",
  capacity: 33,
  user_id: 7,
  date: Date.new,
  location: "Versailles",
  photo: 'https://picsum.photos/200/300/?random'
  })

wedding4 = Wedding.create({
  title: "Populaire",
  description: "A la bonne franquette",
  capacity: 33,
  user_id: 7,
  date: Date.new,
  location: "Berry",
  photo: 'https://picsum.photos/200/300/?random'
  })

wedding5 = Wedding.create({
  title: "Chic",
  description: "Piscine, Champagne",
  capacity: 33,
  user_id: 7,
  date: Date.new,
  location: "Ecully",
  photo: 'https://picsum.photos/200/300/?random'
  })

wedding6 = Wedding.create({
  title: "Libertin",
  description: "Interdit -18 ans",
  capacity: 33,
  user_id: 7,
  date: Date.new,
  location: "Les chandelles",
  photo: 'https://picsum.photos/200/300/?random'
  })

# puts "7 mariage créés"

# if wedding1.save
#   puts "wedding 1 saved"
# else
#   puts "wedding 1 not saved"
# end


puts "seed done !"
