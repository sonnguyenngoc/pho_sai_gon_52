class MenuController < ApplicationController
  def index
      @order.remove_item(params[:line_item_id]) if params[:do] == "remove_item"
      @category_food = Category.where(categories: { is_drink: 'False' }).order("created_at ASC")
      @category_drink = Category.where(categories: { is_drink: 'True' }).order("created_at ASC")
      @menu = Menu.order("created_at ASC")
  end
end
