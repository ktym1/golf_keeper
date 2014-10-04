class AddDefaultValueToRound9 < ActiveRecord::Migration
  def change
  	change_column :holes, :round_9, :boolean, :default => false
  end
end
