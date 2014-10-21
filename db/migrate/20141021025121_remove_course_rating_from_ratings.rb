class RemoveCourseRatingFromRatings < ActiveRecord::Migration
  def change
    remove_column :ratings, :course_rating, :integer
  end
end
