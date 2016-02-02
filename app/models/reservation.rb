class Reservation < ActiveRecord::Base
  validates :customer_name, presence: true
  validates :customer_email, presence: true
  validates_format_of :customer_email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
  validates :customer_phone, presence: true
end