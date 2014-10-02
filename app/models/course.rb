class Course < ActiveRecord::Base
	has_many :holes

	validates :name, presence: true
	# validates :hole_id, presence: true, numericality: {only_integer: true}
end
