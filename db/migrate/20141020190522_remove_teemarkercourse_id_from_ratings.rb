class RemoveTeemarkercourseIdFromRatings < ActiveRecord::Migration
  def change
    remove_column :ratings, :teemarkercourse_id, :integer
  end
end
