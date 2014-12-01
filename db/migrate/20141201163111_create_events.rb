class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :user_id
      t.string :event_address_number
      t.string :event_street_name
      t.string :event_postcode
      t.string :event_contact_number
      t.integer :quantity_of_flowers
      t.text :flower_description
      t.text :equipment_return

      t.timestamps
    end
  end
end
