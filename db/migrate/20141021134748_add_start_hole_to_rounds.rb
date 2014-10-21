class AddStartHoleToRounds < ActiveRecord::Migration
  def change
    add_column :rounds, :start_hole, :integer
  end
end
