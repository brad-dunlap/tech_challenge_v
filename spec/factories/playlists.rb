# spec/factories/playlists.rb
FactoryBot.define do
  factory :playlist do
    title { Faker::Lorem.word }
    img { Faker::LoremFlickr.image }
  end
end
