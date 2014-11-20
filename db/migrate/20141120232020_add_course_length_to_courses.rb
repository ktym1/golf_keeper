class AddCourseLengthToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :course_length, :integer
  end
end
