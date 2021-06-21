class Discount < ApplicationRecord
  belongs_to :listing
  validate :valid_price
# @discount.listing => devuelve instance of listing
  def valid_price
    if price >= listing.max_price || price <= listing.min_price
      errors.add(:price, "Are you sure of this price ?")
    end
  end
end
