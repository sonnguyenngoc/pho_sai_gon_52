class CateringController < ApplicationController
  def index
    @info = Restaurant.first
    @order.remove_item(params[:line_item_id]) if params[:do] == "remove_item" 
  end
end
