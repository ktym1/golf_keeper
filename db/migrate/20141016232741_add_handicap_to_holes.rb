class AddHandicapToHoles < ActiveRecord::Migration
  def change
    add_column :holes, :handicap_rating, :integer
  end
end
