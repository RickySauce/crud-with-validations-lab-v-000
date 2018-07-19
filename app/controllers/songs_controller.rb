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
    @song = Song.new
    if @song.create(song_params(:title, :artist_name))
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