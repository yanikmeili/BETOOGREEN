class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.integer :stock
      t.float :max_price
      t.float :min_price
      t.date :end_date
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
