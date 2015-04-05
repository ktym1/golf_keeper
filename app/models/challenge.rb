class Challenge < ActiveRecord::Base
	belongs_to :round
	belongs_to :match
	belongs_to :player
	after_save :create_round

	validate :maximum_players_per_match

	def maximum_players_per_match
		if self.match.joined_players.count > 3
			errors[:base] << "Maximum 4 players"
		end
	end

	def create_round
		round = Round.create(course_id: self.match.course_id, player_id: self.player.id, tee_id: self.match.tee_id, round_length: 18)
		self.update_column(:round_id, round.id)
	end


end
