class AddTeeIdToRounds < ActiveRecord::Migration
  def change
    add_column :rounds, :tee_id, :integer
  end
end
