class CreateTeemarkercourses < ActiveRecord::Migration
  def change
    create_table :teemarkercourses do |t|
      t.integer :championship
      t.integer :blue
      t.integer :white
      t.integer :red

      t.timestamps
    end
  end
end
