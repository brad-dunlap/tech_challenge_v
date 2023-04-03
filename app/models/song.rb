class Song < ApplicationRecord
  has_many :playlist_tracks
  has_many :playlists, through: :playlist_tracks


  def get_longest_song
    # TODO
  end
end
