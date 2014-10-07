class Player < ActiveRecord::Base
	has_many :rounds

	validates :username, presence: true
	validates :email, presence: true
end
