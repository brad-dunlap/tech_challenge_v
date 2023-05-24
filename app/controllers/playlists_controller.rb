class PlaylistsController < ApplicationController
  def index
    @playlists = Playlist.all.to_a
    @playlist_times = calculate_playlist_times
    if params[:sort] == 'shortest'
      @playlists.sort_by! { |playlist| @playlist_times[playlist.id] }
    elsif params[:sort] == 'longest'
      @playlists.sort_by! { |playlist| @playlist_times[playlist.id] }.reverse!
    end
  end

  def show
    @playlist = Playlist.find(params[:id])
    @songs_in_playlist = @playlist.songs
    @playlist_time_minutes = playlist_time_in_minutes(@playlist)
  end

  def new
    @playlist = Playlist.new
  end

  def create
    @playlist = Playlist.new(playlist_params)
    if @playlist.save
      redirect_to root_path, notice: 'Playlist was successfully created.'
    else
      render :new, notice: 'Playlist was not created.'
    end
  end

  def search
    @playlist = Playlist.find(params[:id])

    artist_name = params[:artist]

    if artist_name.present?
      @songs_in_playlist = @playlist.songs.joins(:artist).where('LOWER(artists.name) LIKE ?',
                                                                "%#{artist_name.downcase}%")
      @playlist_time_minutes = "Approx. #{@songs_in_playlist.sum(:length)} minutes"

    else
      @songs_in_playlist = []
      flash.now[:notice] = 'No songs in playlist'
      @playlist_time_minutes = 0
    end

    render :show
  end

  private

  def playlist_time_in_minutes(playlist)
    total_sec = 0
    playlist.songs.each do |song|
      min, sec = song.length.split(':')
      total_sec += (min.to_i * 60) + sec.to_i
    end
    total_min = (total_sec / 60.0).round
    "#{total_min} minutes"
  end

  def calculate_playlist_times
    playlist_times = {}
    @playlists.each do |playlist|
      playlist_times[playlist.id] = playlist_time_in_minutes(playlist)
    end
    playlist_times
  end

  def playlist_params
    params.require(:playlist).permit(:title, :img)
  end
end
