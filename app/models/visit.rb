class Visit < ActiveRecord::Base
	belongs_to :user
	belongs_to :location

	validates :user_name, presence: true
	validates :user_name, length: {minimum: 3}
	validates :user_name, length: {maximum: 30}
	validate :dontBeEqual

	def dontBeEqual
		errors[:from_date] << 'no puede ser igual a To_date' if from_date == to_date
	end

	def self.last_created(n)
		order(created_at: :asc).limit(n)
	end
end
