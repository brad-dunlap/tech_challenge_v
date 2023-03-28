class Playlist < ApplicationRecord
  has_many :playlist_tracks
  has_many :songs, through: :playlist_tracks




end
