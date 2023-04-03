class Artist < ActiveRecord::Migration[7.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :image_url
      t.string :bio
    end
  end
end
