class AddGenderToRatings < ActiveRecord::Migration
  def change
    add_column :ratings, :gender, :string, :limit => 1
  end
end
