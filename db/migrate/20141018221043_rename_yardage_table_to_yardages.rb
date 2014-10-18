class RenameYardageTableToYardages < ActiveRecord::Migration
  def change
  	rename_table :yardage, :yardages
  end
end
