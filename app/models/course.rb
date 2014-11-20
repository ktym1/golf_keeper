class Course < ActiveRecord::Base
	has_many :holes
	has_many :rounds
	has_many :tees
	has_many :players, through: :rounds
	accepts_nested_attributes_for :tees, :reject_if => :all_blank, :allow_destroy => true

	validates :name, presence: true, uniqueness: true
end
