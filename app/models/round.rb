class Round < ActiveRecord::Base
	after_save :create_scores


	belongs_to :course
	belongs_to :player
	belongs_to :tee
	has_many :scores, dependent: :destroy
	has_many :holes, through: :scores
	has_many :challenges
		
	validates :course_id, presence: true, numericality: {only_integer: true}
	validates :round_length, presence: true, numericality: {only_integer: true}
	validates :player_id, presence: true, numericality: {only_integer: true}

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

	def create_scores
		gender_acronym = self.player.gender
		gender = gender_acronym.downcase == "m" ? "male" : "female" 
		self.course.holes.send(gender).each do |hole|
			Score.find_or_create_by(round_id: self.id, hole_id: hole.id)
		end
	end

	def score_dates
	 	dates = []
	 	self.scores.order("updated_at DESC").each do |score|
	 		date = {}
	 		date[:updated_at] = score.updated_at
	 		dates << date
	 	end
	 	return dates
	end

	def time_update
		time_kv = score_dates.first
		time = time_kv[:updated_at]
		time.strftime("%d/%m/%Y") 
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

	def self.eighteen_hole
		where("round_length = ?", 18)
	end

	def complete?
		round_length == self.scores.where("score is not null").count
	end


end
