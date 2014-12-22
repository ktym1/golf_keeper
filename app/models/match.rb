class Match < ActiveRecord::Base	
	belongs_to :creating_player, class_name: "Player", foreign_key: :player_id
	has_many :player_matches
	has_many :joined_players, through: :player_matches, source: :player

	after_save :add_player_to_player_match
	before_save :set_duration
	# validate :maximum_players

	def add_player_to_player_match
		self.player_matches.create(player_id: self.player_id, match_id: self.id)
	end

	def maximum_players
		if joined_players > 4
			errors.add(:joined_players, "Maximum 4 players")
		end
	end
	
	def set_duration
	  self.duration = @hours * 60 + @minutes
	end

	def hours
	  self.duration / 60;
	end
end
