class MenuController < ApplicationController
  def index
      @order.remove_item(params[:line_item_id]) if params[:do] == "remove_item"
      @category_food = Category.where(categories: { is_drink: 'False' })
      @menu = Menu.all
  end
end
