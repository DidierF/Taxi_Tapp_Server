class Taxi < ActiveRecord::Base
	has_many :user_taxi_calls
	belongs_to :user
end
