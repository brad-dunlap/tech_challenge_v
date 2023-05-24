class ArtistsController < ApplicationController
  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to root_path, notice: 'Artist was successfully created.'
    else
      render :new, notice: 'Artist was not created.'
    end
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :image_url, :bio)
  end
end
