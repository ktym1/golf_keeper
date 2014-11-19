class Course < ActiveRecord::Base
	has_many :holes
	has_many :rounds
	has_many :tees
	has_many :players, through: :rounds

	validates :name, presence: true, uniqueness: true
end
