class CartController < ApplicationController
  def index
    @order.remove_item(params[:line_item_id]) if params[:do] == "remove_item"
  end
  
  def clear_items
    @order.line_items.destroy_all
    redirect_to controller: 'menu', action: 'index'
  end
end
