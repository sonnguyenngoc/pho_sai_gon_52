class MenuController < ApplicationController
  def index
      @order.remove_item(params[:line_item_id]) if params[:do] == "remove_item"
      @category = Category.all
      @menu = Menu.all
  end
end
