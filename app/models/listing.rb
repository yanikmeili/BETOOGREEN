class Listing < ApplicationRecord
  belongs_to :product # @listing.product
  has_many :discounts # @listing.discounts => array
  has_many :purchases # @listing.purchases => array

  include PgSearch::Model
  pg_search_scope :global_search,
  against: [],
  associated_against: {
  product: [:name, :description]
  },
  using: {
  tsearch: { prefix: true }
  }

  # this calculates the amount of units sold
  def quantity_sold
    # purchases.inject(0) { |sum, purchase| sum + purchase.quantity }
    purchases.sum(:quantity)
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
    # calculates the total amount ($$$) sold
    purchases.reduce(0) { |total, purchase| total + (purchase.quantity * current_price) }.round(2)
    # -> quantity_sold * current_price
  end

  def current_price
    min_price
    # TODO: Actualizar para que calcule el current price por los descuentos
    # get quantity_sold
    # crear el array de hash de [{ quantity: 0, price: 0,3 }, { quantity: 2000, price: 02 }, { quantity: 3000, price: 0,15 }
    # lo ordenamos por quantity, de mayor a menor. array.sort(quantity)
    # array.each cuando quantity_sold >= :quantity este es el current_price

    #el current price solamente depende del dicsount
  end
end
