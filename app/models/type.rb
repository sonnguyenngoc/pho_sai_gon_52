class Type < ActiveRecord::Base
  validates :title, presence: true
end
