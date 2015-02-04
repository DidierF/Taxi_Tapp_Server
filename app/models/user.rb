class User < ActiveRecord::Base
	has_many :user_taxi_calls
	has_one :taxi

	after_update :update_taxi

	def getFullName
		self.first_name + ' ' + self.last_name
	end

	def get_full_name
		self.getFullName
	end

	def full_name
		self.getFullName
	end


	private
	def update_taxi
		if(!self.taxi.nil?)
			taxi = self.taxi
			taxi.latitude = self.latitude
			taxi.longitude = self.longitude
			taxi.name = self.getFullName
			taxi.save
		end
	end
end
