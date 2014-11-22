class Course < ActiveRecord::Base
	after_save :create_holes

	has_many :holes
	has_many :rounds
	has_many :tees, dependent: :destroy
	has_many :players, through: :rounds
	accepts_nested_attributes_for :tees, :reject_if => :all_blank, :allow_destroy => true

	validates :name, presence: true, uniqueness: true
	validates :course_length, presence: true, inclusion: { in: [9, 18],
    message: "%{value} is not a valid course length" }

    def create_holes
		x = course_length
			x.times do
				self.holes.each do |hole| 
					binding.pry
				Hole.find_or_create_by(course_id: self.id, hole_id: hole.id)	
				end 
			end
	end

end
