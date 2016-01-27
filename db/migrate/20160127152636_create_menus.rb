class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :image_url
      t.string :name_1
      t.string :name_2
      t.text :description
      t.decimal :price, :precision => 8, :scale => 2
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
