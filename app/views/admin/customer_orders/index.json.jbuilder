json.array!(@customer_orders) do |customer_order|
  json.extract! customer_order, :id, :first_name, :last_name, :company_name, :email, :phone, :address
  json.url customer_order_url(customer_order, format: :json)
end
