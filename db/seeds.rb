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


new_user_polo = User.create({
    first_name: "Paul",
    last_name: "de Bodi",
    birthday: Date.new(1986,3,4),
    location: "Lyon",
    email: "polo@bodi.fr",
    password: "333333",
    password_confirmation: "333333",
    avatar_url_url: "https://avatars1.githubusercontent.com/u/32060402?s=400&u=33d0f8f8d6ac9979437727646e169c3173784a42&v=4"
    })


new_user_aurel = User.create({
    first_name: "Aurelie",
    last_name: "Dubs",
    birthday: Date.new(1983,1,31),
    location: "Venissieux",
    email: "aure@lie.fr",
    password: "222222",
    password_confirmation: "222222",
    avatar_url_url: "https://avatars0.githubusercontent.com/u/32846131?s=400&v=4"
    })


new_user_horti = User.create({
    first_name: "Hor",
    last_name: "Titi",
    birthday: Date.new(1992,3,30),
    location: "Bourg-en-Bresse",
    email: "hor@titi.fr",
    password: "111111",
    password_confirmation: "111111",
    avatar_url_url: "https://avatars0.githubusercontent.com/u/32671308?s=400&v=4"
    })




puts "id horti : #{new_user_horti.id}"
puts "id aurelie : #{new_user_aurel.id}"
puts "id polo : #{new_user_polo.id}"

puts "créons 6 mariages maintenant"


wedding1_polo = Wedding.create({
  title: "collaboratif",
  description: "Mariage collaboratif en Bourgogne",
  capacity: 51,
  user_id: new_user_polo.id,
  date: Date.new(2018, 5, 19),
  location: "Pontigny",
  photo_url: 'https://www.le-pigeonnier-colbert.fr/wp-content/uploads/Abbaye-de-Pontigny-1040x559.jpg'
  })



wedding2_polo = Wedding.create({
  title: "Traditionnel",
  description: "Célébrons notre amour à la mairie",
  capacity: 33,
  user_id: new_user_polo.id,
  date: Date.new(2018,1,27),
  location: "Villeurbanne",
  photo_url: 'http://ekladata.com/iFXMrulEPn1hJsuM-eAZtYl9Mzk.jpg',
  })



wedding3_horti = Wedding.create({
  title: "Chic",
  description: "Cérémonie chic, thème Blanc",
  capacity: 78,
  user_id: new_user_horti.id,
  date: Date.new(2018,7,7),
  location: "Versailles",
  photo_url: 'http://www.chateauversailles-spectacles.fr/sites/default/files/styles/largeur_page/public/en-tete-site-festival2016-nuits-orangerie-version.jpg?itok=Zkq2UlQd',
  })



wedding4_horti = Wedding.create({
  title: "Piscine Champagne",
  description: "Tant qu'il y aura des bulles ...",
  capacity: 89,
  user_id: new_user_horti.id,
  date: Date.new(2020,6,29),
  location: "Saint-Didier au Mont d'or",
  photo_url: 'http://cdn1.greatfon.com/uploads/picture/452/129/129452/sunset-wateksuite-exterior.jpg'
  })



wedding5_aurel = Wedding.create({
  title: "Trinquons !",
  description: "Quand certains font les trains, nous on fait ...",
  capacity: 132,
  user_id: new_user_aurel.id,
  date: Date.new(2018,12,31),
  location: "Valence",
  photo_url: 'https://www.theknot.com/assets/topic_pages/wedding-vows-ceremony-de390170d87b481e073afef3e03a2c7b4a5d7e0b1de1036a40816f80fa85a6cd.jpg'
  })



wedding6_aurel = Wedding.create({
  title: "Libertin",
  description: "Interdit -18 ans",
  capacity: 69,
  user_id: new_user_aurel.id,
  date: Date.new(2018,2,14),
  location: "Paris",
  photo_url: 'http://fr.web.img6.acsta.net/videothumbnails/15/01/22/09/19/126413.jpg'
  })




puts "seed done !"
