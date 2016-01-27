class Post < ActiveRecord::Base
  mount_uploader :image_url, PostUploader
  
  belongs_to :type
end
