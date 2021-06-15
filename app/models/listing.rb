class Listing < ApplicationRecord
  belongs_to :product
  has_many :discounts
  has_many :purchases

  # this calculates the amount of units sold
  def quantity_sold
    purchases.inject(0) { |sum, purchase| sum + purchase.quantity }
  end

  # this calculate the percentage of a listing sold
  def percentage_sold
    ((quantity_sold / stock.to_f) * 100).round
  end
end
