class AddTeeIdToRatings < ActiveRecord::Migration
  def change
    add_column :ratings, :tee_id, :integer
  end
end
