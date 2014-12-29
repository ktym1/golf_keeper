class RenamePlayerMatchesToChallenges < ActiveRecord::Migration
  def change
  	rename_table :player_matches, :challenges
  end
end
