class Bouquet < ActiveRecord::Base
  attr_accessible :event_id, :number_bouquets, :price

belongs_to :event
has_one :purchase
end
