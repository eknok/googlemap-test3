class AddLatitudeAndLongitudeToSake < ActiveRecord::Migration[5.1]
  def change
    add_column :sakes, :latitude, :float
    add_column :sakes, :longitude, :float
  end
end
