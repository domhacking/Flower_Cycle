class Event < ActiveRecord::Base
  attr_accessible :event_name, :equipment_return, :event_address_number, :event_contact_number, :event_postcode, :event_street_name, :flower_description, :quantity_of_flowers, :user_id

  has_many :bouquets
  belongs_to :user, conditions: [ "role=?", "Supplier"]
  
end
