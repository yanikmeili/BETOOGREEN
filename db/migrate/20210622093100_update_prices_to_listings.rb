class UpdatePricesToListings < ActiveRecord::Migration[6.0]
  def change
    remove_column :listings, :max_price
    remove_column :listings, :min_price
    add_monetize :listings, :max_price, currency: { present: false }
    add_monetize :listings, :min_price, currency: { present: false }
  end
end
