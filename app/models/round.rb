class Round < ActiveRecord::Base
	belongs_to :course

	validates :course_id, presence: true, numericality: {only_integer: true}
	validates :round_length, presence: true, numericality: {only_integer: true}
end
