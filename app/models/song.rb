class Song < ApplicationRecord
  has_many :playlist_tracks
  has_many :playlists, through: :playlist_tracks
	belongs_to :artist

	validates :titles, presence: true, uniqueness: true
	validates :length, presence: true, numericality: { greater_than: 0 }
	validates :genre, presence: true
	validates :release_date, presence: true


  def get_longest_song
    # TODO: filter
  end
end
