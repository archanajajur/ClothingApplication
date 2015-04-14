class ChangeRolevalueInUesrs < ActiveRecord::Migration
  def change
  	 change_column_default :users, :role, :default => "user"
  end
end
	