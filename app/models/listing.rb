class Listing < ApplicationRecord
  belongs_to :product # @listing.product
  has_many :discounts # @listing.discounts => array
  has_many :purchases # @listing.purchases => array

  def quantity_sold
    purchases.inject(0) { |sum, purchase| sum + purchase.quantity }
  end

  def percentage_sold
    ((quantity_sold / stock.to_f) * 100).round
  end
end
