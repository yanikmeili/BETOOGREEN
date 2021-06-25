class Listing < ApplicationRecord
  monetize :min_price_cents
  monetize :max_price_cents
  belongs_to :product # @listing.product
  has_many :discounts, dependent: :destroy # @listing.discounts => array
  has_many :purchases, dependent: :destroy # @listing.purchases => array
  accepts_nested_attributes_for :discounts

  include PgSearch::Model
  pg_search_scope :global_search,
  against: [],
  associated_against: {
  product: [:name, :description]
  },
  using: {
  tsearch: { prefix: true }
  }

  # this calculates the top listings sold
  def self.best_sellers
    # listings = self.all
    # listings = listings.map do |listing|
    #   listing_hash = listing.as_json
    #   listing_hash[:quantity_sold] = listing.quantity_sold
    #   listing_hash
    # end
    Listing.all.sort_by { |listing| - listing.quantity_sold }.first(9)
  end

  # this calculates the amount of units sold
  def quantity_sold
    purchases.inject(0) { |sum, purchase| sum + purchase.quantity }
    # purchases.sum(:quantity)
  end

  def quantity_pending
    stock - quantity_sold
  end

  # this calculate the percentage of a listing sold
  def percentage_sold
    ((quantity_sold / stock.to_f) * 100).round
  end

  def end_date_string
    end_date.strftime('%b, %d, %Y')
  end

  def total_sales
    quantity_sold * current_price
  end

  def current_price
    price_hash = discount_hash.find { |discount| quantity_sold >= discount[:quantity] }
    price_hash[:price]
  end

  def discount_hash
    milestones = [{ quantity: 0, price: max_price }, { quantity: stock, price: min_price }]
    discounts.each { |discount| milestones << { quantity: discount.quantity, price: discount.price } }
    milestones.sort_by { |milestone| - milestone[:quantity] }
  end

  # [{:quantity=>0, :price=>1.0}, {:quantity=>3500, :price=>0.85}, {:quantity=>7000, :price=>0.7}]

  # [ {price: 1, next_price: 0.85, sold: 3500, limit: 3500},
  # {price: 0.85, next_price: 0.7, sold: 500, limit: 3500} ]

  def discount_bars
    if discounts.empty?
      [{ price: max_price, next_price: min_price, sold: quantity_sold, limit: stock }]
    # elsif discounts.length == 1
    else
      discount_sold = quantity_sold >= discounts[0].quantity ? discounts[0].quantity :  quantity_sold
      last_sold = quantity_sold >= discounts[0].quantity ? quantity_sold - discounts[0].quantity : 0
      [
        { price: max_price, next_price: discounts[0].price, sold: discount_sold, limit: discounts[0].quantity },
        { price: discounts[0].price, next_price: min_price, sold: last_sold, limit: stock - discounts[0].quantity }
      ]
    end
  end
end
