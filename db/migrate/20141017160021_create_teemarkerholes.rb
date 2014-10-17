class CreateTeemarkerholes < ActiveRecord::Migration
  def change
    create_table :teemarkerholes do |t|
      t.integer :championship
      t.integer :blue
      t.integer :white
      t.integer :red
      t.integer :hole_id

      t.timestamps
    end
  end
end
