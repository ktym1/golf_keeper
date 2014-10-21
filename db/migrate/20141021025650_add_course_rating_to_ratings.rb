class AddCourseRatingToRatings < ActiveRecord::Migration
  def change
    add_column :ratings, :course_rating, :float
  end
end
