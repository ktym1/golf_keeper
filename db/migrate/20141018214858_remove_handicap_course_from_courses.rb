class RemoveHandicapCourseFromCourses < ActiveRecord::Migration
  def change
    remove_column :courses, :handicap_course, :integer
  end
end
