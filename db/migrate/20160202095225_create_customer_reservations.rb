class CreateCustomerReservations < ActiveRecord::Migration
  def change
    create_table :customer_reservations do |t|
      t.string :customer_name
      t.string :customer_email
      t.string :customer_phone
      t.datetime :order_time
      t.text :note

      t.timestamps null: false
    end
  end
end
