class AddLatitudeAndLongitudeToUserTaxiCall < ActiveRecord::Migration
  def change
  	add_column :user_taxi_calls, :latitude, :float
  	add_column :user_taxi_calls, :longitude, :float
  end
end
