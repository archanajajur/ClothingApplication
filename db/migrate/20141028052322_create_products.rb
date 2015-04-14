class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
	t.string :name
	t.text :description
	t.float :price
	t.boolean :is_featured ,default: false
	t.integer :designer_id
	t.string :sku
	t.binary :image
    t.string :image_file_name
    t.string :image_content_type
    t.integer :image_file_size
    t.datetime :image_updated_at
	t.timestamps
    end
  end
end
