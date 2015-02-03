class UserTaxiCall < ActiveRecord::Base
	belongs_to :user
	belongs_to :taxi

	before_create do
		self.pending = true
		self.direct_call = taxi_id.nil? ? false : true
	end

	protected

end
