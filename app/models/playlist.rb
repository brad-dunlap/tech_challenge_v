class Playlist < ApplicationRecord
  has_many :songs, through: :playlist_tracks




end
