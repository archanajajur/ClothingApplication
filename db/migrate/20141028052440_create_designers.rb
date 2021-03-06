class CreateDesigners < ActiveRecord::Migration
  def change
    create_table :designers do |t|
		t.string :name
		t.string :description
		t.string :city
		t.string :state
		t.string :country
		t.binary :image
	    t.string :image_file_name
	    t.string :image_content_type
	    t.integer :image_file_size
	    t.datetime :image_updated_at
 		t.timestamps
    end
  end
end
