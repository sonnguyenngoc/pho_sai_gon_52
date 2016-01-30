class ReservationController < ApplicationController
  def index
    @order.remove_item(params[:line_item_id]) if params[:do] == "remove_item"
    @reservation = Reservation.new
    @reservation.time_order = Time.now
  end
end
