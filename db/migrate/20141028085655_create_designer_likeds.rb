class CreateDesignerLikeds < ActiveRecord::Migration
  def change
    create_table :designer_likeds do |t|
    	t.integer :designer_id
		t.integer :user_id    	
      	t.timestamps
    end
  end
end
