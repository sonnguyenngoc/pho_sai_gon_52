class GalleryDetail < ActiveRecord::Base
  mount_uploader :image_url, GalleryUploader
end
