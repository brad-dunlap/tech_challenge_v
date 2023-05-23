# app/models/artist.rb
class Artist < ApplicationRecord
	validates :name, presence: true
  validates :image_url, presence: true
  validates :bio, presence: true
end
