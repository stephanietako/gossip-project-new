
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


20.times do 

    user = User.create!(first_name: Faker::Name.name, last_name: Faker::Name.last_name, description: Faker::Lorem.paragraph, age: rand(18..99), city_id: rand(1..20))
    puts "user created"
end

30.times do 
    gossip = Gossip.create!(title: Faker::Quote.matz, content: Faker::Lorem.paragraph, user_id: rand(1..20))
end

10.times do 
     tag = Tag.create!(title: Faker::Emotion.adjective)
end

50.times do 
   join = JoinGossipTag.create!(gossip_id: rand(1..50), tag_id: rand(1..10))

end

