class ChangeDataTypeForEndDate < ActiveRecord::Migration
  def change
  	change_column :matches, :end_date, :date
  end
end
