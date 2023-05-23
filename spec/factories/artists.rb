# spec/factories/artists.rb
FactoryBot.define do
  factory :artist do
    name { Faker::Music::RockBand.name }
    image_url { Faker::Internet.url }
    bio { Faker::Lorem.paragraph }
  end
end
