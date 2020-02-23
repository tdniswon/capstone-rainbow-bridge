class CreateTestOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :test_orders do |t|
      t.string :name
      t.text :notes

      t.timestamps
    end
  end
end
