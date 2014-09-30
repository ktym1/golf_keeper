class CreateHoles < ActiveRecord::Migration
  def change
    create_table :holes do |t|
      t.boolean :round_9
      t.boolean :round_18

      t.timestamps
    end
  end
end
