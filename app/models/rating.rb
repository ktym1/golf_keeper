class Rating < ActiveRecord::Base
belongs_to :tee

validates :course_rating, presence: true, numericality: {only_integer: true}
validates :slope_rating, presence: true, numericality: {only_integer: true}
validates :tee_id, presence: true, numericality: {only_integer: true}
validates :gender, :inclusion => ["m", "f", "M", "F"]

end
