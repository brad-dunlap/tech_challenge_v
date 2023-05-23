class AddArtistToSongs < ActiveRecord::Migration[7.0]
  def change
		add_column :songs, :artist_id, :integer
		add_foreign_key :songs, :artists
		add_index :songs, :artist_id
  end
end
