class Playermatch < ActiveRecord::Base
	belongs_to :round
	belongs_to :match
	belongs_to :player
end

