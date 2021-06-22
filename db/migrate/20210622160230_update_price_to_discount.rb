class UpdatePriceToDiscount < ActiveRecord::Migration[6.0]
  def change
    remove_column :discounts, :price
    add_monetize :discounts, :price, currency: { present: false }
  end
end
