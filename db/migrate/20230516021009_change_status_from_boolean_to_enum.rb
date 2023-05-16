class ChangeStatusFromBooleanToEnum < ActiveRecord::Migration[7.0]
  def change
    # Add a new column for the enum
    add_column :bookings, :new_status, :integer, default: 0

    # Update the new column with the converted values
    execute <<-SQL
      UPDATE bookings
      SET new_status = CASE WHEN status = true THEN 1 ELSE 0 END
    SQL

    # Remove the old boolean column
    remove_column :bookings, :status

    # Rename the new column to 'status'
    rename_column :bookings, :new_status, :status
  end
end
