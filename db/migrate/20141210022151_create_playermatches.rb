class CreatePlayermatches < ActiveRecord::Migration
  def change
    create_table :playermatches do |t|
      t.integer :round_id
      t.integer :match_id
      t.integer :player_1
      t.integer :player_2
      t.integer :player_3
      t.integer :player_4

      t.timestamps
    end
  end
end
