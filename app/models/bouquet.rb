class Bouquet < ActiveRecord::Base
  attr_accessible :event_id, :bouquet_stock, :price, :title, :description, :image_url, :purchase_id

belongs_to :event
belongs_to :purchase
end

# has_many :order_products
# has_many :orders, through: :order_products