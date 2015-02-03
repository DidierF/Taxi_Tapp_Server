class AddUsersToTaxiss < ActiveRecord::Migration
  def change
  	add_column :taxis, :user_id, :integer
  end
end
