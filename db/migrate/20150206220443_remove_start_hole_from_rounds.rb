class RemoveStartHoleFromRounds < ActiveRecord::Migration
  def change
    remove_column :rounds, :start_hole 
  end
end
