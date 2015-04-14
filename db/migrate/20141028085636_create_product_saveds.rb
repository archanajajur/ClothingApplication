class CreateProductSaveds < ActiveRecord::Migration
  def change
    create_table :product_saveds do |t|
    	t.integer :product_id
    	t.integer :user_id
    	t.integer :size_id
    	t.integer :qty_selected
      	t.timestamps
    end
  end
end
