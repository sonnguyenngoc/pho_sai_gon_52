class CustomerOrder < ActiveRecord::Base
  has_many :customer_order_details, dependent: :destroy
  accepts_nested_attributes_for :customer_order_details, :reject_if => lambda { |a| a[:menu_id].blank? }, :allow_destroy => true
  
  def save_from_order(order)
    order.line_items.each do |item|
      self.customer_order_details.create(menu_id: item.menu_id, quantity: item.quantity)
    end
  end
end
