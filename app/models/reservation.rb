class Reservation < ActiveRecord::Base
	belongs_to :course
	# belongs_to :player

	validate :availability

	private
		def availability
			if !course.availability(number_of_golfers, reservation_time)
				errors.add(:base, "course is full")
			end
		end
end
