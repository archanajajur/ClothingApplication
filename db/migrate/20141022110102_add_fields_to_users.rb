class AddFieldsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :role, :string
    add_column :users, :is_disabled, :boolean,:default=>false
    
  end
end
