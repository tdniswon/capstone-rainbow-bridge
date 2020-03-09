class CreateOrderLineRestrictions < ActiveRecord::Migration[6.0]
  def change
    create_table :order_line_restrictions do |t|
      t.references :order_line, null: false, foreign_key: true
      t.references :dietary_restriction, null: false, foreign_key: true

      t.timestamps
    end
  end
end
