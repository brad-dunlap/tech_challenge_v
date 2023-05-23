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
    it { should have_many(:playlist_tracks) }
    it { should have_many(:playlists).through(:playlist_tracks) }
  end
end
