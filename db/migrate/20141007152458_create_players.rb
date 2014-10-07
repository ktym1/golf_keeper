class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :email
      t.string :username

      t.timestamps
    end
  end
end
