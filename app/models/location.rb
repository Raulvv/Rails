class Location < ActiveRecord::Base
	def self.last_created(n)
		@locations = Location.order(created_at: :asc).limit(n)
	end
end
