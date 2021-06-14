class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.string :material
      t.text :impact
      t.string :origin

      t.timestamps
    end
  end
end
