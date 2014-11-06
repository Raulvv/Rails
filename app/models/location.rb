class Location < ActiveRecord::Base
	has_many :visits

	validates :name, presence: true
	validates :city, presence: true
	validates :name, length: {minimum: 3}
	validates :name, length: {maximum: 30}
	

	def self.last_created(n)
		order(created_at: :asc).limit(n)
	end
end
