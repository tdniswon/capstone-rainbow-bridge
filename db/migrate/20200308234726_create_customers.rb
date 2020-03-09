class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :customer_first_name, null: false
      t.string :customer_last_name, null: false
      t.string :customer_email, null: false
      t.string :customer_phone
      t.string :customer_street_address
      t.string :customer_city
      t.string :customer_state
      t.string :customer_zip_code
      t.references :customer_status, null: false, foreign_key: true

      t.timestamps
    end
  end
end
