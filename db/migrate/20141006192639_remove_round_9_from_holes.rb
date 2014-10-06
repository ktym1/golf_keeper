class RemoveRound9FromHoles < ActiveRecord::Migration
  def change
    remove_column :holes, :round_9, :boolean
  end
end
