class CreateTeeMarkerHoles < ActiveRecord::Migration
  def change
    create_table :tee_marker_holes do |t|
      t.integer :championship
      t.integer :blue
      t.integer :white
      t.integer :red
      t.integer :hole_id

      t.timestamps
    end
  end
end
