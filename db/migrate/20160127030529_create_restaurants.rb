class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :image_url
      t.string :name
      t.string :email
      t.string :address
      t.string :phone
      t.string :fax
      t.string :website
      t.text :description

      t.timestamps null: false
    end
  end
end
