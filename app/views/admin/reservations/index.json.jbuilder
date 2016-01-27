json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :time_order, :note, :customer_name, :customer_phone, :customer_email
  json.url reservation_url(reservation, format: :json)
end
