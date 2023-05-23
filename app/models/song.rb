class Song < ApplicationRecord
	belongs_to :artist
  has_many :playlist_tracks
  has_many :playlists, through: :playlist_tracks

	validates :title, presence: true, uniqueness: true
	validates :length, presence: true
	validates :genre, presence: true
	validates :release_date, presence: true


  def self.get_longest_song
    order(length: :desc).first
  end
end
