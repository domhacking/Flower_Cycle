class AddExtraFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :house_number, :string
    add_column :users, :road_name, :string
    add_column :users, :postcode, :string
    add_column :users, :company_name, :string
    add_column :users, :website, :string
    add_column :users, :contact_number, :string
  end
end
