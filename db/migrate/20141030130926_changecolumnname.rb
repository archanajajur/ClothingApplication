class Changecolumnname < ActiveRecord::Migration
  def change
  	rename_column :products, :designers_id, :designer_id
  end
end
