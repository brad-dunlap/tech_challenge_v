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

  def create; end

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
end
