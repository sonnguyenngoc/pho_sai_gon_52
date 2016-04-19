class Post < ActiveRecord::Base
  mount_uploader :image_url, PostUploader
  belongs_to :type
  
  validates :title, presence: true
  validates :image_url, allow_blank: true, format: {
    with: %r{\.(gif|jpg|png)\Z}i,
    message: 'must be a URL for GIF, JPG or PNG image.'
  }
  validates :type_id, presence: true
end
