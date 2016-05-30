class AddHourEnAndHourDeToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :hour_en, :string
    add_column :restaurants, :hour_de, :string
  end
end
