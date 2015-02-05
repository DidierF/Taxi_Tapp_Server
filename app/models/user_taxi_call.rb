class UserTaxiCall < ActiveRecord::Base
	belongs_to :user
	belongs_to :taxi

	before_create do
		if taxi_id == 0 || taxi_id.nil?
			self.direct_call = false
		else
			self.direct_call = true
		end
		self.pending = true
		self.accepted = false
		true
	end

	before_save do
		if !self[:accepted].nil? && self[:accepted]
			self.pending = false
		end
		true
	end

end
