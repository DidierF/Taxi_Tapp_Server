class AddAvailableToTaxis < ActiveRecord::Migration
  def change
    add_column :taxis, :available, :boolean
  end
end
