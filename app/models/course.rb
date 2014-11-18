class Course < ActiveRecord::Base
	has_many :holes
	has_many :rounds
	has_many :tees
	has_many :players, through: :rounds
	has_many :reservations
	# has_many :players, through: :reservations

	validates :name, presence: true, uniqueness: true

 	def availability(number_of_golfers)
 		r = reservations.sum(:number_of_golfers)
 		r + number_of_golfers <= capacity
 	end	
end
