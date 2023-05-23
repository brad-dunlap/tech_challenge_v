# spec/models/playlist_track_spec.rb
require 'rails_helper'

RSpec.describe PlaylistTrack, type: :model do
  describe 'associations' do
    it { should belong_to(:song) }
    it { should belong_to(:playlist) }
  end
end
