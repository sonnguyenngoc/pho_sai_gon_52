json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :image_url, :name, :email, :address, :phone, :fax, :wesite, :description
  json.url restaurant_url(restaurant, format: :json)
end
