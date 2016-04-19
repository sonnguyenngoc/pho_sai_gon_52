class CustomerContactsController < ApplicationController

  # POST /customer_contacts
  # POST /customer_contacts.json
  def create
    @customer_contact = CustomerContact.new(customer_contact_params)

    respond_to do |format|
      if @customer_contact.save
        CustomerMailer.contact_email(@customer_contact).deliver_now
        format.html { redirect_to controller: "finish_contact", action: "index" }
        format.json { render :show, status: :created, location: @customer_contact }
      else
        format.html { render :new }
        format.json { render json: @customer_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_contact
      @customer_contact = CustomerContact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_contact_params
      params.require(:customer_contact).permit(:name, :email, :message)
    end
end
