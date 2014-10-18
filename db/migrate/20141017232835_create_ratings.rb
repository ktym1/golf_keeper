class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :course_rating
      t.integer :slope_rating
      t.integer :course_id
      t.integer :teemarkercourse_id

      t.timestamps
    end
  end
end
