class PlaylistTracksController < ApplicationController

  def show; end



  def create
    attrs = {
      playlist_id: playlist_track_params[:playlist_id],
      song_id: playlist_track_params[:playlist_track][:song_id]
    }
    @playlist = Playlist.find(playlist_track_params[:playlist_id])

    PlaylistTrack.create(attrs)

    redirect_to @playlist
  end

  def playlist_track_params
    params.permit({ playlist_track: [:song_id] }, :playlist_id)
  end

end
