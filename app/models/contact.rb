class Contact < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true
  validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
  validates :message, presence: true
end