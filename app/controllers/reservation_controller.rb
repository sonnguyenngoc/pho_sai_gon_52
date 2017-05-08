class ReservationController < ApplicationController
  def index
    @order.remove_item(params[:line_item_id]) if params[:do] == "remove_item"
    @customer_reservation = CustomerReservation.new(customer_number: '')
    @customer_reservation.order_time = Time.now
  end
end