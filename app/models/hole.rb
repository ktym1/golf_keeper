class Hole < ActiveRecord::Base
	belongs_to :course

	validates :course_id, presence: true, numericality: {only_integer: true}
	# validates :round_9 nil?
	# validates :round_18 nil?
end
