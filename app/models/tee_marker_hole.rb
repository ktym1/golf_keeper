class TeeMarkerHole < ActiveRecord::Base
belongs_to :hole

validates :championship, presence: true, numericality: {only_integer: true}
validates :blue, presence: true, numericality: {only_integer: true}
validates :white, presence: true, numericality: {only_integer: true}
validates :red, presence: true, numericality: {only_integer: true}
validates :hole_id, presence: true, numericality: {only_integer: true}	
end
