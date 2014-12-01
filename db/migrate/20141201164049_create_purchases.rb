class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :purchase_order_number
      t.integer :bouquet_id
      t.integer :user_id
      t.date :delivery_date
      t.boolean :same_as_billing_address
      t.string :delivery_house_number
      t.string :delivery_road_name
      t.string :delivery_postcode

      t.timestamps
    end
  end
end
