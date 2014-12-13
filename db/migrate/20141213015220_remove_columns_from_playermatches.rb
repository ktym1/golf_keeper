class RemoveColumnsFromPlayermatches < ActiveRecord::Migration
  def change
  	remove_column :playermatches, :playerinitiate
  	rename_column :playermatches, :playerjoin, :player_id
  end
end
