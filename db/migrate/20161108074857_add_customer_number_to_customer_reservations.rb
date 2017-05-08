class AddCustomerNumberToCustomerReservations < ActiveRecord::Migration
  def change
    add_column :customer_reservations, :customer_number, :integer
  end
end
