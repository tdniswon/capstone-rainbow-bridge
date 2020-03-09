class CreateOrderTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :order_types do |t|
      t.string :order_description, null: false

      t.timestamps
    end
  end
end
