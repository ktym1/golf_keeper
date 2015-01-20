class AddRoundCompleteToRounds < ActiveRecord::Migration
  def change
    add_column :rounds, :round_complete, :boolean, :default => false
  end
end
