class CreateBouquetPurchases < ActiveRecord::Migration
  def change
    create_table :bouquet_purchases do |t|
      t.integer :quantity
      t.integer :purchase_id
      t.integer :bouquet_id

      t.timestamps
    end
  end
end
