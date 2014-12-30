class Challenge < ActiveRecord::Base
	belongs_to :round
	belongs_to :match
	belongs_to :player
	after_save :create_round

	def create_round
		Round.create(course_id: self.match.course_id, player_id: self.player.id, tee_id: self.match.tee_id, start_hole: 1, round_length: 18)
	end
end
