class Hole < ActiveRecord::Base
	belongs_to :course
	has_many :scores

	validates :course_id, presence: true, numericality: {only_integer: true}
	validates :par, presence: true, numericality: {only_integer: true}
	validates :hole_number, inclusion: { in: 1..18, message: "Must be from 1 to 18" } 
	# validate :course_should_exist

	# def course_should_exist
	# 	if course.blank?
	# 		errors.base.add("Course does not exist.")
	# 		return false
	# 	end
	# end

	# def new_hole_count
	# 	if @course is new
	# 		@hole begins at 1
	# 	end
	# end
	
	# def hole_max
	# 	if @hole.self > 18
	# 		render: "courses/how"
	# 	else
	# 		save
	# end
end
