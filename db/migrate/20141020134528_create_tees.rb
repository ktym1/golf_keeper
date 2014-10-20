class CreateTees < ActiveRecord::Migration
  def change
    create_table :tees do |t|
      t.string :colour
      t.integer :course_id

      t.timestamps
    end
  end
end
