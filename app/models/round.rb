class Round < ActiveRecord::Base
	after_save :create_scores


	belongs_to :course
	belongs_to :player
	belongs_to :tee
	has_many :scores
	has_many :holes, through: :scores
	
	validates :course_id, presence: true, numericality: {only_integer: true}
	validates :round_length, presence: true, numericality: {only_integer: true}
	validates :player_id, presence: true, numericality: {only_integer: true}
	validates :start_hole, presence: true, inclusion: { in: 1..18 }

	#need to count # of player's rounds
	def round_count
		# player_rounds = 0
			# Round.where(player_id:4).count
	end

	#need to capture nil score field since nil can't be added to
	def total
		round_total = 0
		scores.each do |score_model|
			round_total += score_model.score unless score_model.score.nil?	
		end
		return round_total
	end

	#need to update
	def par
		par = 0
		scores.each do |score|
			par += score.hole.par
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
		self.scores.each do |score|
			if score.updated_at > self.updated_at
				puts score.updated_at
			end
		end
	end

	def self.ordered_by_last_updated_score
		self.joins(:scores).order("scores.updated_at")
	end
	

	def score_differential
		#Take current player round's total score and compare it to par.
		if total > par
			total - par
		elsif total < par
			par - total
		else
			"N/A"
		end
	end
end
