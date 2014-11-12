class Score < ActiveRecord::Base
	belongs_to :hole
	belongs_to :round

	validates :hole_id, presence: true, numericality: {only_integer: true}
	validates :round_id, presence: true, numericality: {only_integer: true}

	def get_yards 
		#Want current score to find it's hole_id than look for the yards
		#For any score, the yards will correspond to the tee they're playing off the round
		yardages = self.hole.yardages.where("tee_id = ?", self.round.tee_id).first
		yardages.yards
	end
end
