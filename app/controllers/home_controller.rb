class HomeController < ApplicationController
  def index
    @order.remove_item(params[:line_item_id]) if params[:do] == "remove_item"
    @info = Restaurant.first
  end
end
