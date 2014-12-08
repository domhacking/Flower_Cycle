class AddFieldsToBouquet < ActiveRecord::Migration
  def change
    add_column :bouquets, :bouquet_name, :string
    add_column :bouquets, :bouquet_description, :text
    add_column :bouquets, :bouquet_image, :string
    add_column :bouquets, :purchase_id, :string
  end
end
