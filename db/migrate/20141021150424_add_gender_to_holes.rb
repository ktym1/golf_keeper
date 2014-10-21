class AddGenderToHoles < ActiveRecord::Migration
  def change
    add_column :holes, :gender, :string, :limit => 1
  end
end
