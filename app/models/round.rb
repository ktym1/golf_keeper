class Round < ActiveRecord::Base
	after_save :create_scores


	belongs_to :course
	belongs_to :player
	belongs_to :tee
	has_many :scores, dependent: :destroy
	has_many :holes, through: :scores
	
	validates :course_id, presence: true, numericality: {only_integer: true}
	validates :round_length, presence: true, numericality: {only_integer: true}
	validates :player_id, presence: true, numericality: {only_integer: true}
	validates :start_hole, presence: true, inclusion: { in: 1..18 }

	def total
		round_total = 0
		scores.each do |score_model|
			round_total += score_model.score unless score_model.score.nil?	
		end
		return round_total
	end

	def par
		par = 0
		holes.each do |hole|
			par += hole.par || 0
		end
		return par
	end

	def handicap_score
		 handicap_total = 0
		 scores.each do |score|
		 	#do calculations here
		 end
	end

	def create_scores
		gender_acronym = self.player.gender
		gender = gender_acronym.downcase == "m" ? "male" : "female" 
		self.course.holes.send(gender).each do |hole|
			Score.find_or_create_by(round_id: self.id, hole_id: hole.id)
		end
	end

	def time_update
	#check this Round's (self) score updated_at attribute; puts this attribute if more recent than round's updated_at
		# self.scores.each do |score|
		# 	if score.updated_at > self.updated_at
		# 		puts score.updated_at
		# 	end
		# end
	end

	def self.ordered_by_last_updated_score
		self.joins(:scores).uniq.order("scores.updated_at")
	end
	

	def score_differential_sum
		diff = []
		scores.each do |score_model|
			tmp = score_model.score.nil? ? 0 : score_model.score_differential
			diff << tmp
		end
		return diff.sum
	end

	def self.nine_hole
		where("round_length = ?", 9)
	end

	def self.eighteen_hole
		where("round_length = ?", 18)
	end

	def round_complete
		eighteen = Hole.where("hole_number = ?", 18)
		self.holes.send(eighteen).each do |hole|
			print "Round Complete" unless hole.scores.score.nil?
		end
	end
end
