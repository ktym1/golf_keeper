class RenameTeemarkerholeTableToYardage < ActiveRecord::Migration
  def change
  	rename_table :teemarkerholes, :yardage
  end
end
