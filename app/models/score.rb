class Score < ActiveRecord::Base
	belongs_to :hole
	belongs_to :round

	validates :hole_id, presence: true, numericality: {only_integer: true}
	validates :round_id, presence: true, numericality: {only_integer: true}
end
