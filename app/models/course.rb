class Course < ActiveRecord::Base
	has_many :holes
	has_many :rounds
	validates :name, presence: true
	# validates :hole_id, presence: true, numericality: {only_integer: true}
end
