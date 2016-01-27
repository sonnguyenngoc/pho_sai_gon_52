class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :time_order
      t.text :note
      t.string :customer_name
      t.string :customer_phone
      t.string :customer_email

      t.timestamps null: false
    end
  end
end
