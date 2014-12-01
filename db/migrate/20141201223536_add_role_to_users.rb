class AddRoleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role, :string
    add_column :users, :rake, :string
    add_column :users, :db, :migrate
  end
end
