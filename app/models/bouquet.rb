class Bouquet < ActiveRecord::Base
  attr_accessible :event_id, :price, :bouquet_name, :bouquet_description, :bouquet_image, :purchase_id, :number_bouquets

belongs_to :event
belongs_to :purchase
belongs_to :user, through: :event
end

# has_many :order_products
# has_many :orders, through: :order_products