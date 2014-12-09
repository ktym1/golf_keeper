class PlayerMatch < ActiveRecord::Base
	belongs_to :round
	belongs_to :match

	belongs_to :player_1, class_name => 'Player'
	belongs_to :player_2, class_name => 'Player'
	belongs_to :player_3, class_name => 'Player'
	belongs_to :player_4, class_name => 'Player'
end
