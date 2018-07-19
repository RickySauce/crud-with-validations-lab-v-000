class SongsController < ApplicationController 

  def index 
    @songs = Song.all
  end

  def show 
    @song = Song.find(params[:id])
  end 

  def new 
    @song = Song.new 
  end 

  def create 
    if @song = Song.create(song_params(:title, :artist_name, :released, :genre, :release_year))
      redirect_to song_path(@song)
    else 
      render :new 
    end
  end 

  def edit 
    @song = Song.find(params[:id])
  end 

  def update 
  end 

  private 

  def song_params(*args)
    params.require(:song).permit(*args)
  end
  
end