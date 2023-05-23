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
end
