class RemoveHoleIdFromCourses < ActiveRecord::Migration
  def change
    remove_column :courses, :hole_id, :integer
  end
end
