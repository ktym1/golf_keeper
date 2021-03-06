class Player < ActiveRecord::Base

	mount_uploader :avatar, AvatarUploader
	
	has_many :rounds
	has_many :courses, through: :rounds
	has_many :created_matches, class_name: "Match"
	has_many :challenges

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

	#[{:course_id => 1, :round_id => 1, :score => 75}]
	def best_scores
		scores = []
		self.rounds.where("round_complete = ?", true).each do |round|
			score = {}
			score[:course_id] = round.course_id
			score[:round_id] = round.id
			score[:score] = round.total
			scores << score
		end	
		return scores
	end

	def best_score_for_player(course_id)

		course = best_scores.select {|h| h[:course_id] == course_id}
		min_score_hash = course.min_by {|h| h[:score]}
		min_score = min_score_hash[:score] unless min_score_hash.nil?
	end

	def worst_score_for_player(course_id)
		course = best_scores.select {|h| h[:course_id] == course_id}
		max_score_hash = course.max_by {|h| h[:score]}
		max_score = max_score_hash[:score] unless max_score_hash.nil?
	end

	def average_score_for_player(course_id)
		course = best_scores.select {|h| h[:course_id] == course_id}
		all_scores_array = course.map {|h| h[:score]}
		average_score = all_scores_array.inject{|sum, n| sum + n}.to_i / (all_scores_array.size.nonzero? || 1)
	end

	private

		def create_remember_token
			self.remember_token = Player.digest(Player.new_remember_token)
		end
end
