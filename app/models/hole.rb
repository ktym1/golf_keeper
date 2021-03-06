class Hole < ActiveRecord::Base
	belongs_to :course
	has_many :scores, dependent: :destroy
	has_many :yardages, dependent: :destroy

	validates :course_id, numericality: {only_integer: true}
	validates :par, numericality: {only_integer: true}, :if => Proc.new {|h| not h.par.blank?}

	validates :hole_number, inclusion: { in: 1..18, message: "Must be from 1 to 18" } 
  validates :handicap_rating, inclusion: { in: 1..18, message: "Must be from 1 to 18" }, :if => Proc.new {|h| not h.handicap_rating.blank?}
  validates :gender, :inclusion => ["m", "f", "M", "F"]
  accepts_nested_attributes_for :yardages, :reject_if => :all_blank, :allow_destroy => true

	def self.male
		where("gender = ?", "m")
	end

	def self.female
		where("gender = ?", "f")
	end
end
