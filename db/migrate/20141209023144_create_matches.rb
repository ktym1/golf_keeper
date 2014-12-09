class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :course_id
      t.string :integer,
      t.string :tee_id
      t.string :integer,
      t.datetime :end_date

      t.timestamps
    end
  end
end
