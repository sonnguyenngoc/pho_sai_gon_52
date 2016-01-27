class Menu < ActiveRecord::Base
  mount_uploader :image_url, ProductUploader
  
  belongs_to :category
end
