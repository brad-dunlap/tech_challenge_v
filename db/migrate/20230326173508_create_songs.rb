class CreateSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.string :genre
      t.string :length
      t.string :release_date

      t.timestamps
    end
  end
end
