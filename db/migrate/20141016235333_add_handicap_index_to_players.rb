class AddHandicapIndexToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :handicap_index, :float
  end
end
