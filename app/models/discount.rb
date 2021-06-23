class Discount < ApplicationRecord
  monetize :price_cents
  belongs_to :listing
  before_create :valid_price
# @discount.listing => devuelve instance of listing
  def valid_price
    if price_cents >= listing.max_price_cents || price_cents <= listing.min_price_cents
      errors.add(:price, "Are you sure of this price ?")
    end
  end
end
