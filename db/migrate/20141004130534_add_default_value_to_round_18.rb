class AddDefaultValueToRound18 < ActiveRecord::Migration
  def change
  	change_column :holes, :round_18, :boolean, :default => true
  end
end
