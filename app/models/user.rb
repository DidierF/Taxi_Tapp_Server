class User < ActiveRecord::Base
	has_many :user_taxi_calls
	has_one :taxi

	after_update :update_taxi
	reverse_geocoded_by :latitude, :longitude

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
			t = self.taxi
			t.latitude = self.latitude
			t.longitude = self.longitude
			t.name = self.getFullName
			t.save
		end
		true
	end
end
