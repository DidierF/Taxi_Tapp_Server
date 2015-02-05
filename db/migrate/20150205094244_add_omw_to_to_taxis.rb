class AddOmwToToTaxis < ActiveRecord::Migration
  def change
  	add_column :taxis, :omw_to, :integer
  end
end
