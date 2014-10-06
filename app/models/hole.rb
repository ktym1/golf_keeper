class Hole < ActiveRecord::Base
	belongs_to :course

	validates :course_id, presence: true, numericality: {only_integer: true}
	validates :par, presence: true, numericality: {only_integer: true}
end
