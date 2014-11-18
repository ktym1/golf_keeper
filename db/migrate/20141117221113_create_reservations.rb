class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.belongs_to :course
      t.integer :number_of_golfers
      t.timestamps
    end
  end
end
