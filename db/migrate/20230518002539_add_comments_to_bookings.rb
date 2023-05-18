class AddCommentsToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :comment, :string
    remove_column :bookings, :from, :time
  end
end
