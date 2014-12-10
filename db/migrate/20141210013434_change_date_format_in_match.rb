class ChangeDateFormatInMatch < ActiveRecord::Migration
  def change
  	change_column :matches, :end_date, :time
  end
end
