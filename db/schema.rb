# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 20_230_523_162_816) do
  create_table 'artists', force: :cascade do |t|
    t.string 'name'
    t.string 'image_url'
    t.string 'bio'
  end

  create_table 'playlist_tracks', force: :cascade do |t|
    t.integer 'song_id', null: false
    t.integer 'playlist_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['playlist_id'], name: 'index_playlist_tracks_on_playlist_id'
    t.index ['song_id'], name: 'index_playlist_tracks_on_song_id'
  end

  create_table 'playlists', force: :cascade do |t|
    t.string 'title'
    t.string 'img'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'songs', force: :cascade do |t|
    t.string 'title'
    t.string 'genre'
    t.string 'length'
    t.string 'release_date'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'artist_id'
    t.index ['artist_id'], name: 'index_songs_on_artist_id'
  end

  add_foreign_key 'playlist_tracks', 'playlists'
  add_foreign_key 'playlist_tracks', 'songs'
  add_foreign_key 'songs', 'artists'
end
