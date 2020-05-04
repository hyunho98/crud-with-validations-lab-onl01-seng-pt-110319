class SongsController < ApplicationController

  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_song!
    @song = Song.find(params[:id])
  end

  def song_params
    params.required(:song).permit(:title, :released, :release_year, :artist_name, :genre)
  end
end
