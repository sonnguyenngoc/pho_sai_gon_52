class CustomerMailer < ApplicationMailer
  default from: 'sonnn@hoangkhang.com.vn'
  
  def contact_email(customer_contact)
    @customer_contact = customer_contact
    mail(to: "sonnn@hoangkhang.com.vn", subject: "Contact - Phở Sài Gòn 52")
  end
  
  def reservation_email(customer_reservation)
    @customer_reservation = customer_reservation
    mail(to: "sonnn@hoangkhang.com.vn", subject: "Reservation - Phở Sài Gòn 52")
  end
  
  def customer_order_email(customer_order)
    @customer_order = customer_order
    mail(to: "sonnn@hoangkhang.com.vn", subject: "Customer Order - Phở Sài Gòn 52")
  end
  
end
