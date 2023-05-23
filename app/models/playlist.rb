class Playlist < ApplicationRecord
  has_many :playlist_tracks
  has_many :songs, through: :playlist_tracks
	has_many :artists, through: :songs

  validates :title, presence: true

  def sort_by_artist_name
    # TODO: implement if possible
  end
end
