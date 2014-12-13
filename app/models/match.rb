class Match < ActiveRecord::Base
	after_save: :add_player_to_playermatch
	
	belongs_to :creating_player, class_name: "Player", foreign_key: :player_id
	has_many :playermatches
	has_many :joined_player, through: :playermatches, source: :player

	validate :maximum_players

	def add_player_to_playermatch
		self.playermatches.create(player_id: self.player.id, match_id: self.id)
	end

	def maximum_players
		if joined_player > 4
			errors.base("Maximum 4 players")
		end
	end
end
