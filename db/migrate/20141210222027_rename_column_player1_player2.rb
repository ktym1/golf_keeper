class RenameColumnPlayer1Player2 < ActiveRecord::Migration
  def change
  	rename_column :playermatches, :player1, :playerinitiate
  	rename_column :playermatches, :player2, :playerjoin
  end
end
