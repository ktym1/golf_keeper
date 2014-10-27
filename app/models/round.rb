class Round < ActiveRecord::Base
	belongs_to :course
	belongs_to :player
	has_many :scores
	# accepts_nested_attributes_for :courses
	
	validates :course_id, presence: true, numericality: {only_integer: true}
	validates :round_length, presence: true, numericality: {only_integer: true}
	validates :player_id, presence: true, numericality: {only_integer: true}
	validates :start_hole, presence: true, inclusion: { in: 1..18 }

	def total
		round_total = 0
		scores.each do |score|
			round_total += score
		end
		return round_total
	end

	def par
		par = 0
		scores.each do |score|
			par += score.hole.par
		end
	end

	def handicap_score
		 handicap_total = 0
		 scores.each do |score|
		 	#do calculations here
		 end
	end
end
