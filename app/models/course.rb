class Course < ActiveRecord::Base
	after_save :create_holes

	has_many :holes, dependent: :destroy
	has_many :rounds, dependent: :destroy
	has_many :tees, dependent: :destroy
	has_many :players, through: :rounds
	has_many :yardages, through: :tees
	accepts_nested_attributes_for :tees, :reject_if => :all_blank, :allow_destroy => true

	validates :name, presence: true, uniqueness: true
	validates :course_length, presence: true, inclusion: { in: [9, 18],
    message: "%{value} is not a valid course length" }

  def create_holes
	(1..course_length).each do |number|
		hole = Hole.where(course_id: self.id, hole_number: number, gender: "m").first_or_initialize
		hole.save(validate: false)
		hole = Hole.where(course_id: self.id, hole_number: number, gender: "f").first_or_initialize
		hole.save(validate: false)
		end 
  end 

	def score_counter
		score = []
		self.rounds.each do |round|
			score << round.total
		end
		return score
	end

	def course_best_score
		score_counter.max
	end

	def course_worst_score
		score_counter.min
	end

	def course_average_score
		score_counter.inject{ |sum, n| sum + n}.to_f / score_counter.size
	end
end
