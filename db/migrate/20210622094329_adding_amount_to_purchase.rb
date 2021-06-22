class AddingAmountToPurchase < ActiveRecord::Migration[6.0]
  def change
    add_monetize :purchases, :amount, currency: { present: false }
    add_column :purchases, :checkout_session_id, :string
  end
end
