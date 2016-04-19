json.array!(@customer_reservations) do |customer_reservation|
  json.extract! customer_reservation, :id, :customer_name, :customer_email, :customer_phone, :order_time, :note
  json.url customer_reservation_url(customer_reservation, format: :json)
end
