class AddPlayerIdToRound < ActiveRecord::Migration
  def change
    add_column :rounds, :player_id, :integer
  end
end
