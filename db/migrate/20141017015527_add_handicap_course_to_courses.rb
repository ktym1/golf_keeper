class AddHandicapCourseToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :handicap_course, :integer
  end
end
