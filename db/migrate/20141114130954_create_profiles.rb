class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
	t.string :name
	t.string :title
      t.timestamps
    end
  end
end
