class Rename < ActiveRecord::Migration
  def change
    rename_table :playermatches, :player_matches
  end
end
