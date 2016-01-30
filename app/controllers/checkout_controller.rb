class CheckoutController < ApplicationController
  def index
    @order.remove_item(params[:line_item_id]) if params[:do] == "remove_item"
    @customer_order = CustomerOrder.new
  end
end
