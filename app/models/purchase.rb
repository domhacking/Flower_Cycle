class Purchase < ActiveRecord::Base
  attr_accessible :bouquet_id, :delivery_date, :delivery_house_number, :delivery_postcode, :delivery_road_name, :purchase_order_number, :same_as_billing_address, :user_id

  belongs_to :bouquet
  belongs_to :user
end