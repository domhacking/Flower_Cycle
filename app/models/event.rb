class Event < ActiveRecord::Base
  attr_accessible :equipment_return, :event_address_number, :event_contact_number, :event_postcode, :event_street_name, :flower_description, :quantity_of_flowers, :user_id
end
