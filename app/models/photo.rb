class Photo < ActiveRecord::Base
  belongs_to :user, :counter_cache => true
  
  mount_uploader :image, PhotoUploader
  
  acts_as_voteable
  
  default_scope order("created_at DESC")
end
