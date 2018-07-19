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

  private 

  def song_params(*args)
    params.require(:song).require(*args)
  end
  
end