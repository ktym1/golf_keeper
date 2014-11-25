class Hole < ActiveRecord::Base
	belongs_to :course
	has_many :scores, dependent: :destroy
	has_many :yardages, dependent: :destroy

	validates :course_id, presence: true, numericality: {only_integer: true}
	validates :par, presence: true, numericality: {only_integer: true}

	validates :hole_number, inclusion: { in: 1..18, message: "Must be from 1 to 18" } 
	validates :hole_number, uniqueness: { scope: :gender,
    message: "should be unique for this course's gender" }
    
    validates :handicap_rating, presence: true, numericality: {only_integer: true}
    validates :handicap_rating, inclusion: { in: 1..18, message: "Must be from 1 to 18" } 
    validates :handicap_rating, uniqueness: { scope: :gender,
    message: "should be unique for this course's gender" }
    
    validates :gender, :inclusion => ["m", "f", "M", "F"]
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
	
	def self.male
		where("gender = ?", "m")
	end

	def self.female
		where("gender = ?", "f")
	end

end
