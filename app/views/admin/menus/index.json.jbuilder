json.array!(@menus) do |menu|
  json.extract! menu, :id, :image_url, :name_1, :name_2, :description, :price, :category_id
  json.url menu_url(menu, format: :json)
end
