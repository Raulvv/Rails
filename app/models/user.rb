class User < ActiveRecord::Base
	has_many :visits

	validates :name, presence: true
	validates :name, length: {minimum: 3}
	validates :name, length: {maximum: 30}
	validates :email, presence: true
end
