class ReservationController < ApplicationController
  def index
    @reservation = Reservation.new
    @reservation.time_order = Time.now
  end
end
