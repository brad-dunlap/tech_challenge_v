# spec/models/playlist_spec.rb
require 'rails_helper'

RSpec.describe Playlist, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:title) }
  end

  describe 'associations' do
    it { should have_many(:playlist_tracks) }
    it { should have_many(:songs).through(:playlist_tracks) }
  end

	describe 'instance methods'
		it 'should sort songs by artist name' do
			playlist = create(:playlist)

			artist1 = create(:artist, name: 'Beyonce')
			artist2 = create(:artist, name: 'Christina Aguilera')
			artist3 = create(:artist, name: 'Adele')

			song1 = create(:song, artist: artist1)
			song2 = create(:song, artist: artist2)
			song3 = create(:song, artist: artist3)
			song4 = create(:song, artist: artist1)
			song5 = create(:song, artist: artist3)
			song6 = create(:song, artist: artist2)

			create(:playlist_track, playlist: playlist, song: song1)
			create(:playlist_track, playlist: playlist, song: song2)
			create(:playlist_track, playlist: playlist, song: song3)
			

			sorted_songs = playlist.sort_by_artist_name
			expect(sorted_songs).to eq([song3, song1, song2])


	end
end
