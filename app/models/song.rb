class Song < ApplicationRecord
  has_many :playlist_tracks
  has_many :playlists, through: :playlist_tracks

  # TODO: do we want duplicate songs?

  def get_longest_song
    # TODO: filter
  end
end
