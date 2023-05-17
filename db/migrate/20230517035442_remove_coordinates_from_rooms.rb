class RemoveCoordinatesFromRooms < ActiveRecord::Migration[7.0]
  def change
    remove_column :rooms, :latitude, :float
    remove_column :rooms, :longitude, :float
  end
end
