class AddYardsToYardages < ActiveRecord::Migration
  def change
    add_column :yardages, :yards, :integer
  end
end
