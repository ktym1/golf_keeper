class Round < ActiveRecord::Base
	belongs_to :course
	belongs_to :player
	has_many :scores
	accepts_nested_attributes_for :course
	
	validates :course_id, presence: true, numericality: {only_integer: true}
	validates :round_length, presence: true, numericality: {only_integer: true}
	validates :player_id, presence: true, numericality: {only_integer: true}
	validates :start_hole, presence: true, inclusion: { in: 1..18 }
end
