class CustomerReservationsController < ApplicationController

  # POST /customer_reservations
  # POST /customer_reservations.json
  def create
    @customer_reservation = CustomerReservation.new(customer_reservation_params)
    
    @customer_reservation.order_time = (params[:customer_reservation][:order_time] + " " + params[:time]).to_datetime if !params[:time].nil? 
    
    respond_to do |format|
      if @customer_reservation.save
        CustomerMailer.reservation_email(@customer_reservation).deliver_now
        format.html { redirect_to controller: "finish_reservation", action: "index" }
        format.json { render :show, status: :created, location: @customer_reservation }
      else
        format.html { render :new }
        format.json { render json: @customer_reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_reservation
      @customer_reservation = CustomerReservation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_reservation_params
      params.require(:customer_reservation).permit(:customer_name, :customer_email, :customer_number, :customer_phone, :order_time, :note, :number)
    end
end
