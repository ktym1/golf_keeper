class Player < ActiveRecord::Base
	has_many :rounds
	before_save { self.email = email.downcase }
	validates :username, presence: true, length: { maximum: 20 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 30 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

	has_secure_password
	validates :password, length: { minimum: 6}
end
