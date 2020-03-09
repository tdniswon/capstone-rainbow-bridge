class CreateCustomerStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :customer_statuses do |t|
      t.string :customer_status_name, null: false

      t.timestamps
    end
  end
end
