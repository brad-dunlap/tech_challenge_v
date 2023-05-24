class SongsController < ApplicationController
  def new
    @song = Song.new
    @artists = Artist.order(:name).select(:name).distinct
  end

  def create
    @song = Song.new(song_params)
    if @song.save!
      redirect_to root_path, notice: 'Song was successfully created.'
    else
      render :new
    end
  end

  private

  def song_params
    params.require(:song).permit(:title, :genre, :length, :artist_id, :release_date)
  end
end
