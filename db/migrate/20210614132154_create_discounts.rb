class CreateDiscounts < ActiveRecord::Migration[6.0]
  def change
    create_table :discounts do |t|
      t.integer :quantity
      t.float :price
      t.references :listing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
