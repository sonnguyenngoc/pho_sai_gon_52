class CreateCustomerOrderDetails < ActiveRecord::Migration
  def change
    create_table :customer_order_details do |t|
      t.integer :customer_order_id
      t.integer :menu_id
      t.integer :quantity
      t.decimal :price, :precision => 8, :scale => 2

      t.timestamps null: false
    end
  end
end
