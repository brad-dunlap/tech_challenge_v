# spec/factories/songs.rb
FactoryBot.define do
  factory :song do
    title { Faker::Music::RockBand.song }
    genre { Faker::Music.genre }
    length { Faker::Number.between(from: 180, to: 600)}
    release_date { Faker::Date.between(from: 10.years.ago, to: Date.today).to_s }
		association :artist
  end
end
