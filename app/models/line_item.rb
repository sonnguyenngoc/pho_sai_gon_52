class LineItem < ActiveRecord::Base
  belongs_to :menu
  belongs_to :order
  
  def total_item
      menu.price*quantity if menu.price?
  end
end
