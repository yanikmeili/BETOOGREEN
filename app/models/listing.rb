class Listing < ApplicationRecord
  belongs_to :product
  has_many :discounts
  has_many :purchases

  def quantity_sold
    purchases.inject(0) { |sum, purchase| sum + purchase.quantity }
  end

  def percentage_sold
    ((quantity_sold / stock.to_f) * 100).round
  end
end
