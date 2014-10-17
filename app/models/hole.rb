class Hole < ActiveRecord::Base
	belongs_to :course
	has_many :scores
	has_many :tee_marker_holes

	validates :course_id, presence: true, numericality: {only_integer: true}
	validates :par, presence: true, numericality: {only_integer: true}

	validates :hole_number, inclusion: { in: 1..18, message: "Must be from 1 to 18" } 
	validates :hole_number, uniqueness: { scope: :course_id,
    message: "should be unique for this course" }
    
    validates :handicap_rating, presence: true, numericality: {only_integer: true}
    validates :handicap_rating, inclusion: { in: 1..18, message: "Must be from 1 to 18" } 
    validates :handicap_rating, uniqueness: { scope: :course_id,
    message: "should be unique for this course" }
    
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
	

end
