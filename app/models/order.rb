class Order < ActiveRecord::Base
  has_many :line_items, dependent: :destroy
  
  def add_menu(menu_id)
    current_item = line_items.find_by(menu_id: menu_id)
    if current_item
        current_item.quantity += 1
    else
        current_item = line_items.build(menu_id: menu_id)
    end
    current_item
  end
  
  def remove_item(line_item_id)
    self.line_items.where(id: line_item_id).destroy_all
  end
  
  def total_order
    line_items.to_a.sum { |item| item.total_item }
  end
end
