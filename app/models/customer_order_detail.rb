class CustomerOrderDetail < ActiveRecord::Base
  belongs_to :customer_order
  belongs_to :menu
  
  before_validation :update_current_price_from_menu
  def update_current_price_from_menu
    if self.price.nil?
        self.price = menu.price
    end    
  end
  
  def sub_total
    price*quantity
  end
end
