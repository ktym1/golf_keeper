class RenameColumn < ActiveRecord::Migration
  def change
  	rename_column :playermatches, :player_1, :player1
  	rename_column :playermatches, :player_2, :player2
  	rename_column :playermatches, :player_3, :player3
  	rename_column :playermatches, :player_4, :player4
  end
end
