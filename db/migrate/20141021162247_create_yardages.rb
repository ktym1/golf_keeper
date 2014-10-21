class CreateYardages < ActiveRecord::Migration
  def change
    create_table :yardages do |t|
      t.integer :hole_id
      t.integer :tee_id
      t.integer :yards

      t.timestamps
    end
  end
end
