class AddStatusToBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :accepted
    add_column :bookings, :status, :integer, default: 0
  end
end
