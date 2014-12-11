class Playermatch < ActiveRecord::Base
	belongs_to :round
	belongs_to :match

	belongs_to :playerinitiate, class_name: 'Player'
	belongs_to :playerjoin, class_name: 'Player'
end

