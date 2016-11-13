# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

20.times do
  user = User.create(:name => Faker::Name.name, :email => Faker::Internet.email, :avatar_url => Faker::Avatar.image)
  20.times do
    deck = Deck.create(:name => Faker::Commerce.department, :user_id => user.id, :desc => Faker::Lorem.paragraph)
    i = 0
    20.times do
      Card.create(:name => i.to_s, :question => Faker::Lorem.sentence, :answer => Faker::Lorem.sentence, :deck_id => deck.id)
      i += 1
    end
  end
end

user = User.first
20.times do
  deck = Deck.create(:name => Faker::Commerce.department, :user_id => user.id, :desc => Faker::Lorem.paragraph)
  i = 0
  20.times do
    Card.create(:name => i.to_s, :question => Faker::Lorem.sentence, :answer => Faker::Lorem.sentence, :deck_id => deck.id)
    i += 1
  end
end