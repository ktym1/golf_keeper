class RemoveRound18FromHoles < ActiveRecord::Migration
  def change
    remove_column :holes, :round_18, :boolean
  end
end
