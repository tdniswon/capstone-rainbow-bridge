class CreateTestProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :test_products do |t|
      t.string :name
      t.text :description
      t.text :notes
      t.references :test_order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
