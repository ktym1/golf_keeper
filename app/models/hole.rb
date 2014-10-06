class Hole < ActiveRecord::Base
	belongs_to :course

	validates :course_id, presence: true, numericality: {only_integer: true}
	validates :par, presence: true, numericality: {only_integer: true}

	def new_hole_count
		if @course is new
			@hole begins at 1
		end
	end
	
	def hole_max
		if @hole.self > 18
			render: "courses/how"
		else
			save
	end
end
