class CustomerOrdersController < ApplicationController
  
  # POST /customer_orders
  # POST /customer_orders.json
  def create
    @customer_order = CustomerOrder.new(customer_order_params)

    respond_to do |format|
      if @customer_order.save
        @customer_order.save_from_order(@order)
        CustomerMailer.customer_order_email(@customer_order).deliver_now
        Order.destroy(session[:order_id])
        session[:order_id] = nil
        format.html { redirect_to root_path }
        format.json { render :show, status: :created, location: @customer_order }
      else
        format.html { render :new }
        format.json { render json: @customer_order.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_order
      @customer_order = CustomerOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_order_params
      params.require(:customer_order).permit(:first_name, :last_name, :company_name, :email, :phone, :address)
    end
end
