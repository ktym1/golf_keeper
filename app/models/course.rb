class Course < ActiveRecord::Base
	has_many :holes
	has_many :rounds
	has_many :tees
	has_many :players, through: :rounds

	validates :name, presence: true, uniqueness: true

 	def availability(number_of_golfers, reservation_time)
 		reserve_size = reservations.where(reservation_time: reservation_time).sum(:number_of_golfers)
 		reserve_size + number_of_golfers <= capacity
 	end	
end
