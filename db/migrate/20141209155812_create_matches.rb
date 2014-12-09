class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :course_id
      t.integer :player_id
      t.integer :tee_id
      t.datetime :end_date

      t.timestamps
    end
  end
end
