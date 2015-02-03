class CreateUserTaxiCalls < ActiveRecord::Migration
  def change
    create_table :user_taxi_calls do |t|
    	t.integer :user_id
	    t.integer :taxi_id
	    t.boolean :direct_call
	    t.boolean :pending
	    

      	t.timestamps null: false
    end
  end
end
