class Listing < ApplicationRecord
  belongs_to :product # @listing.product
  has_many :discounts # @listing.discounts => array
  has_many :purchases # @listing.purchases => array

  # this calculates the amount of units sold
  def quantity_sold
    # purchases.inject(0) { |sum, purchase| sum + purchase.quantity }
    purchases.sum(:quantity)
  end

  # this calculate the percentage of a listing sold
  def percentage_sold
    ((quantity_sold / stock.to_f) * 100).round
  end
end
