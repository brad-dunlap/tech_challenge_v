# spec/factories/playlist_tracks.rb'
FactoryBot.define do
  factory :playlist_track do
    association :song
    association :playlist
  end
end
