# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"



# --------VVV---- Song Seeds ----------VVV---------------

def random_song_length
  minute = rand(1...9)
  seconds = rand(10...59)

  "#{minute}:#{seconds}"
end

def random_release_date
  Faker::Date.in_date_period(year: rand(1960...2022))
end

def song_attributes
  {
    title: Faker::Music::RockBand.song,
    artist: Faker::Music.band,
    genre: Faker::Music.genre,
    length: random_song_length,
    release_date: random_release_date
  }
end

songs = (1..20).map do | _num |
  Song.create(song_attributes)
end


# --------VVV---- Playlist Seeds ----------VVV---------------

PLAYLIST_IMGS = %w[
  https://www.shutterstock.com/image-vector/musical-poster-your-design-music-600w-1148675771.jpg

  https://www.shutterstock.com/image-vector/astronaut-man-meditates-music-yoga-600w-1142969276.jpg
]


def playlist_attributes
  PLAYLIST_IMGS.map do |img_url|
    {
      title: Faker::Book.title,
      img: img_url
    }
  end
end

playlists = Playlist.create(playlist_attributes) # makes 2 playlists
playlist_one_id = playlists.first.id
playlist_two_id = playlists.last.id

first_ten = songs.sort.first(10)
last_ten = songs.sort.last(10)

first_ten.each do |song|
  PlaylistTrack.create(song_id: song.id, playlist_id: playlist_one_id)
end

last_ten.each do |song|
  PlaylistTrack.create(song_id: song.id, playlist_id: playlist_two_id)
end














