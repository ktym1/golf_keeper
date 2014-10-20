class Tee < ActiveRecord::Base
	has_many :yardages
	has_many :ratings
	belongs_to :course
end
