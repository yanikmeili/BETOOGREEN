class Discount < ApplicationRecord
  belongs_to :listing
  validate :valid_price
# @discount.listing => devuelve instance of listing
  def valid_price
    if price >= listing.max_price_cents || price <= listing.min_price_cents
      errors.add(:price, "Are you sure of this price ?")
    end
  end
end
