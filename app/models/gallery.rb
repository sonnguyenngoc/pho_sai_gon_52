class Gallery < ActiveRecord::Base
  mount_uploader :image_url, GalleryUploader
  has_many :gallery_details
  belongs_to :tag
  accepts_nested_attributes_for :gallery_details, :reject_if => lambda { |a| a[:image_url].blank? }, :allow_destroy => true
  
  def self.get_banner_events
    self.joins(:tag).where(tags: {title: "Banner"})
  end

end
