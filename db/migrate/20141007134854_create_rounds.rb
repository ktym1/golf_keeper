class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.integer :course_id
      t.integer :round_length

      t.timestamps
    end
  end
end
