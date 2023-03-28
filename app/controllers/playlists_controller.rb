class PlaylistsController < ApplicationController


  def index
    @playlists = Playlist.all
  end

  def show
    @playlist = Playlist.find(params[:id])
    @songs_in_playlist = @playlist.songs
  end
end
