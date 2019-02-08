# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Tag.destroy_all
Gossip.destroy_all
LinkTag.destroy_all
City.destroy_all

10.times do
 city = City.create!(name: Faker::Address.city, zipcode: Faker::Number.number(5))
end

puts "10 cities créées"

10.times do
	user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.paragraph_by_chars(140, false), email: Faker::Internet.free_email, age: Faker::Number.number(2), city_id: rand(City.all.first.id..City.all.last.id), password: Faker::DragonBall.character)
end

puts "10 users créés"

21.times do
  gossip = Gossip.create!(title: Faker::Color.color_name, content: Faker::HarryPotter.quote, user_id: rand(User.all.first.id..User.all.last.id),city_id: rand(City.all.first.id..City.all.last.id))
end

puts "20 gossips créés"

10.times do
  tag = Tag.create!(title: Faker::Lorem.word)
end

puts "20 comments crées"
20.times do Comment.create!(content: Faker::Hacker.say_something_smart, user_id: rand(User.all.first.id..User.all.last.id), gossip_id: rand(Gossip.all.first.id..Gossip.all.last.id), like: Faker::Number.between(1, 30))
end

puts "10 tags créés"

25.times do
  links_tag = LinkTag.create!(tag_id: rand(Tag.all.first.id..Tag.all.last.id), gossip_id: rand(Gossip.all.first.id..Gossip.all.last.id))
end

puts "25 liens tags/gossips créés"

10.times do 
  private_message = PrivateMessage.create!(content: Faker::FamousLastWords.last_words, sender_id: rand(User.all.first.id..User.all.last.id), recipient_id: rand(User.all.first.id..User.all.last.id))
end

puts "10 pm envoyés"