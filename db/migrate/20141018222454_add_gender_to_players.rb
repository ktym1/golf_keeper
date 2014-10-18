class AddGenderToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :gender, :string, :limit => 1
  end
end
