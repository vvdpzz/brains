class Photo < ActiveRecord::Base
  belongs_to :user, :counter_cache => true
  
  mount_uploader :image, PhotoUploader
end
