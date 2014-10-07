class Round < ActiveRecord::Base
	belongs_to :course
	belongs_to :player
	has_many :scores

	validates :course_id, presence: true, numericality: {only_integer: true}
	validates :round_length, presence: true, numericality: {only_integer: true}
	validates :course_id, presence: true, numericality: {only_integer: true}
end
