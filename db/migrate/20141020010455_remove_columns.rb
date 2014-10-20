class RemoveColumns < ActiveRecord::Migration
  def change
	remove_column :yardages, :championship
	remove_column :yardages, :blue
	remove_column :yardages, :white
	remove_column :yardages, :red
  end
end
