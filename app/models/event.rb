class Event < ActiveRecord::Base
  attr_accessible :equipment_return, :event_address_number, :event_contact_number, :event_postcode, :event_street_name, :flower_description, :quantity_of_flowers, :user_id

  has_many :bouquets
  has_one :supplier, class_name: :User
  has_one :customers, class_name: :User
end
