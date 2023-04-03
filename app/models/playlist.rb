class Playlist < ApplicationRecord
  has_many :playlist_tracks
  has_many :songs, through: :playlist_tracks

  def sort_by_artist_name
    # TODO: implement if possible
  end
end
