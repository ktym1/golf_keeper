class Score < ActiveRecord::Base
	belongs_to :hole
	belongs_to :round

	validates :hole_id, presence: true, numericality: {only_integer: true}
	validates :round_id, presence: true, numericality: {only_integer: true}

	def get_yards 
		#Want current score to find it's hole_id thank look for the yards
		self.hole.yardages.each do |yardage|
			Yardage.where(score_id: self.id, hole_id: hole.id, yards: yardage)
		end
	end
end
