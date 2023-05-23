# spec/models/song_spec.rb
require 'rails_helper'

RSpec.describe Song, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:genre) }
    it { should validate_presence_of(:length) }
    it { should validate_presence_of(:release_date) }
  end

  describe 'associations' do
    it { should belong_to(:artist) }  # Add association test for artist
    it { should have_many(:playlist_tracks) }
    it { should have_many(:playlists).through(:playlist_tracks) }
  end

  describe 'class methods' do
    it 'should return the longest song' do
      artist = create(:artist)  # Create an artist for the song
      short = create(:song, length: 200, artist: artist)  # Assign the artist to the song
      med = create(:song, length: 250, artist: artist)
      long = create(:song, length: 300, artist: artist)

      result = Song.get_longest_song

      expect(result).to eq(long)
    end
  end
end
