class CreateBouquets < ActiveRecord::Migration
  def change
    create_table :bouquets do |t|
      t.integer :event_id
      t.integer :price
      t.integer :number_bouquets

      t.timestamps
    end
  end
end
