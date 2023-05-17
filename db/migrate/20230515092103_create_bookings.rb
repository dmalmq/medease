class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :room, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.date :date
      t.time :from
      t.integer :hours, default: 1
      t.boolean :status, default: false

      t.timestamps
    end
  end
end
