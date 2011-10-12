class PhotosController < ApplicationController
  before_filter :authenticate_user!, :only => [:new, :create]
  def index
    
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
    
  end
  
  def destroy
    
  end
end
