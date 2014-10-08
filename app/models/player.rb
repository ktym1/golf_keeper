class Player < ActiveRecord::Base
	has_many :rounds

	validates :username, presence: true, length: { maximum: 20 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 30 }, format: { with: VALID_EMAIL_REGEX }

end
