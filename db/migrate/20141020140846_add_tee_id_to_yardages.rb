class AddTeeIdToYardages < ActiveRecord::Migration
  def change
    add_column :yardages, :tee_id, :integer
  end
end
