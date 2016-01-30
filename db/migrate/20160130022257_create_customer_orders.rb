class CreateCustomerOrders < ActiveRecord::Migration
  def change
    create_table :customer_orders do |t|
      t.string :first_name
      t.string :last_name
      t.string :company_name
      t.string :email
      t.string :phone
      t.string :address

      t.timestamps null: false
    end
  end
end
