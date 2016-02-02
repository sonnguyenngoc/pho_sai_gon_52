class CustomerMailer < ApplicationMailer
  default from: 'sonnn@hoangkhang.com.vn'
  
  def contact_email(contact)
    @contact = contact
    mail(to: "sonnn@hoangkhang.com.vn", subject: "Contact - Phở Sài Gòn 52")
  end
  
  def reservation_email(reservation)
    @reservation = reservation
    mail(to: "sonnn@hoangkhang.com.vn", subject: "Reservation - Phở Sài Gòn 52")
  end
  
  def customer_order_email(customer_order)
    @customer_order = customer_order
    mail(to: "sonnn@hoangkhang.com.vn", subject: "Customer Order - Phở Sài Gòn 52")
  end
  
end
