class PlaylistsController < ApplicationController
  def index
    @playlists = Playlist.all
  end

  def show
		require 'pry'; binding.pry
    @playlist = Playlist.find(params[:id])
    @songs_in_playlist = @playlist.songs
    @playlist_time_in_minutes = playlist_time_in_minutes
  end

  def new
    @playlist = Playlist.new
  end

  def create; end

  def playlist_time_in_minutes
    #TODO: implement
  end
end
