# frozen_string_literal: true

require 'faker'

# --------VVV---- Song Seeds ----------VVV---------------

def random_song_length
  minute = rand(1...9)
  seconds = rand(10...59)

  "#{minute}:#{seconds}"
end

def random_release_date
  Faker::Date.in_date_period(year: rand(1960...2022))
end

def song_attributes(artist)
  title = Faker::Music::RockBand.song

  title = Faker::Music::RockBand.song while Song.exists?(title: title)

  {
    title: title,
    genre: Faker::Music.genre,
    length: random_song_length,
    release_date: random_release_date,
    artist_id: artist.id
  }
end

artists = (1..20).map do |_num|
  Artist.create!(
    name: Faker::Music.band,
    image_url: Faker::Internet.url,
    bio: Faker::Lorem.paragraph
  )
end

songs = (1..30).map do |_num|
  artist = artists.sample
  Song.create!(song_attributes(artist))
end

# --------VVV---- Playlist Seeds ----------VVV---------------

PLAYLIST_IMGS = %w[
  https://www.shutterstock.com/image-vector/musical-poster-your-design-music-600w-1148675771.jpg
  https://www.shutterstock.com/image-vector/astronaut-man-meditates-music-yoga-600w-1142969276.jpg
  https://www.shutterstock.com/image-vector/abstract-creative-concept-vector-comic-600w-588062342.jpg
].freeze

def playlist_attributes
  PLAYLIST_IMGS.map do |img_url|
    {
      title: Faker::Book.title,
      img: img_url
    }
  end
end

Playlist.create!(playlist_attributes) # makes 3 playlists

Song.find_in_batches(batch_size: 10).with_index do |group, batch|
  playlist = Playlist.find(batch + 1)
  group.each do |song|
    PlaylistTrack.create(song_id: song.id, playlist_id: playlist.id)
  end
end
