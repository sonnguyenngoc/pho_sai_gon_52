class Restaurant < ActiveRecord::Base
  mount_uploader :image_url, RestaurantUploader
end
