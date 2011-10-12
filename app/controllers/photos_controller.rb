class PhotosController < ApplicationController
  
  before_filter :authenticate_user!, :only => [:new, :create]
  before_filter :vote_init, :only => [:up, :down]
  
  def index
    @photos = Photo.all
  end
  
  def new
    
  end
  
  def create
    photo = current_user.photos.build :username => current_user.username, :image => params[:Filedata]
    if photo.save
      render :json => { :id => photo.id, :photoUrl => photo.image.url(:l) }
    end
  end
  
  def show
    @photo = Photo.find params[:id]
  end
  
  def destroy
    
  end
  
  def up
    current_user.vote_exclusively_for @photo
  end
  
  def down
    current_user.vote_exclusively_against @photo
  end
  
  protected
    def vote_init
      @photo = Photo.select("id").find_by_id(params[:id])
    end
end
