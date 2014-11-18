class Reservation < ActiveRecord::Base
	belongs_to :course
	# belongs_to :player
end
