class Course < ActiveRecord::Base
	has_many :holes
	has_many :rounds
	has_many :tees

	validates :name, presence: true
	
end
