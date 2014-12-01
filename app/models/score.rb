class Score < ActiveRecord::Base
	belongs_to :hole
	belongs_to :round

	validates :hole_id, presence: true, numericality: {only_integer: true}
	validates :round_id, presence: true, numericality: {only_integer: true}

	delegate :player, to: :round, allow_nil: true
	
	def get_yards 
		yardages = self.hole.yardages.where("tee_id = ?", self.round.tee_id).first
		if yardages
			yardages.yards
		end
	end

	def score_differential
		if hole.par && !score.nil?
			score - hole.par
		else
			0
		end
	end
end
