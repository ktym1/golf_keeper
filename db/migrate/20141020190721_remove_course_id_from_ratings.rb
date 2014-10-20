class RemoveCourseIdFromRatings < ActiveRecord::Migration
  def change
    remove_column :ratings, :course_id, :integer
  end
end
