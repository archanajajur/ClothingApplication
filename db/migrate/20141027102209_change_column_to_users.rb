class ChangeColumnToUsers < ActiveRecord::Migration
  def up
  	change_column :users, :role, :string, default: "user"
  end

  def down
  	remove_column :users, :role
  end
end
