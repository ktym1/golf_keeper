class Player < ActiveRecord::Base
	has_many :rounds

	validates :username, presence: true, length: { maximum: 20 }
	validates :email, presence: true, length: { maximum: 30 }
end
