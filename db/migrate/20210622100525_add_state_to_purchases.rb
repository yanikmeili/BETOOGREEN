class AddStateToPurchases < ActiveRecord::Migration[6.0]
  def change
    add_column :purchases, :state, :string, default: "pending"
  end
end
