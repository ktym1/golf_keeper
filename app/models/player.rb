class Player < ActiveRecord::Base
	has_many :rounds
	has_many :courses, through: :rounds

	before_save { self.email = email.downcase }
	before_create :create_remember_token

	validates :username, presence: true, length: { maximum: 20 }
	validates :username, uniqueness: true
	
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 30 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

	validates :gender, presence: true, :inclusion => ["m", "f", "M", "F"]

	has_secure_password
	validates :password, length: { minimum: 6}, :if => :password

	validates_numericality_of :handicap_index, only_integer: false

	def Player.new_remember_token
		SecureRandom.urlsafe_base64
	end

	def Player.digest(token)
		Digest::SHA1.hexdigest(token.to_s)
	end

	private

		def create_remember_token
			self.remember_token = Player.digest(Player.new_remember_token)
		end
end
