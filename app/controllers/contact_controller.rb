class ContactController < ApplicationController
  def index
    @order.remove_item(params[:line_item_id]) if params[:do] == "remove_item"
    @contact = Contact.new
  end
end
