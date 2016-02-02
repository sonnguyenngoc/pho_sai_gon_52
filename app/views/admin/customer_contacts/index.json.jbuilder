json.array!(@customer_contacts) do |customer_contact|
  json.extract! customer_contact, :id, :name, :email, :message
  json.url customer_contact_url(customer_contact, format: :json)
end
