class CreateOrderLineStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :order_line_statuses do |t|
      t.string :order_line_status_name, null: false

      t.timestamps
    end
  end
end
