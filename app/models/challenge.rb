class Challenge < ActiveRecord::Base
	belongs_to :round
	belongs_to :match
	belongs_to :player

	def create_round
		#if round for this match & player exists, use it, otherwise create a new empty round for this player on the challenged course and tee
	end
end
