class Match < ActiveRecord::Base	
	belongs_to :course
	belongs_to :tee
	belongs_to :creating_player, class_name: "Player", foreign_key: :player_id
	has_many :challenges
	has_many :joined_players, through: :challenges, source: :player

	# validate :maximum_players	

	def maximum_players
		if joined_players > 4
			errors.add(:joined_players, "Maximum 4 players")
		end
	end
end
