class Tee < ActiveRecord::Base
	has_many :yardages
	has_many :ratings
	has_many :rounds
	belongs_to :course
	has_many :matches
end
