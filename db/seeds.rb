# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do		#cree 10 villes
	City.create(name: Faker::Address.city, zip_code: Faker::Address.zip)
end

10.times do		#cree 10 user avec une ville en reference
	User.create(first_name: Faker::FunnyName.two_word_name, last_name: Faker::Name.last_name, description: Faker::Quote.most_interesting_man_in_the_world, email: Faker::Internet.email, age: rand(18..99), city: City.all.sample)
end

20.times do |index|	#cree 20 gossip en reference avec user
	Gossip.create(title: "Gossip#{index}",content: Faker::TvShows::GameOfThrones.quote, user: User.all.sample)
end

puts "all entries added"