class Admin::CustomerReservationsController < ApplicationController
  before_action :set_customer_reservation, only: [:show, :edit, :update, :destroy]

  # GET /customer_reservations
  # GET /customer_reservations.json
  def index
    @customer_reservations = CustomerReservation.all
  end

  # GET /customer_reservations/1
  # GET /customer_reservations/1.json
  def show
  end

  # GET /customer_reservations/new
  def new
    @customer_reservation = CustomerReservation.new
  end

  # GET /customer_reservations/1/edit
  def edit
  end

  # POST /customer_reservations
  # POST /customer_reservations.json
  def create
    @customer_reservation = CustomerReservation.new(customer_reservation_params)

    respond_to do |format|
      if @customer_reservation.save
        format.html { redirect_to [:admin, @customer_reservation], notice: 'Customer reservation was successfully created.' }
        format.json { render :show, status: :created, location: @customer_reservation }
      else
        format.html { render :new }
        format.json { render json: @customer_reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_reservations/1
  # PATCH/PUT /customer_reservations/1.json
  def update
    respond_to do |format|
      if @customer_reservation.update(customer_reservation_params)
        format.html { redirect_to [:admin, @customer_reservation], notice: 'Customer reservation was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer_reservation }
      else
        format.html { render :edit }
        format.json { render json: @customer_reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_reservations/1
  # DELETE /customer_reservations/1.json
  def destroy
    @customer_reservation.destroy
    respond_to do |format|
      format.html { redirect_to admin_customer_reservations_url, notice: 'Customer reservation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_reservation
      @customer_reservation = CustomerReservation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_reservation_params
      params.require(:customer_reservation).permit(:customer_name, :customer_email, :customer_phone, :order_time, :note)
    end
end
