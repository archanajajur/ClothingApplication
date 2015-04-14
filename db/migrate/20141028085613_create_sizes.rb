class CreateSizes < ActiveRecord::Migration
  def change
    create_table :sizes do |t|
    	t.integer :product_id
    	t.integer :quantity
    	t.float :price   
		t.string :sizes
		t.timestamps
    end
  end
end
