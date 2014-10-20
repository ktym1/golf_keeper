class Tee < ActiveRecord::Base
	has_many :yardages
	belongs_to :course
end
