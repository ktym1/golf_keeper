class ChangeDataTypeForEndDate < ActiveRecord::Migration
  def change
    rename_column :matches, :end_date, :end_date_old
  	add_column :matches, :end_date, :date
  end
end
