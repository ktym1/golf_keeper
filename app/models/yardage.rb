class Yardage < ActiveRecord::Base
belongs_to :hole
belongs_to :tee

validates :hole_id, presence: true, numericality: {only_integer: true}

end
