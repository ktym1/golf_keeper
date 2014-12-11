class RemoveColumn < ActiveRecord::Migration
  def change
  	remove_column :playermatches, :player3
  	remove_column :playermatches, :player4
  end
end
