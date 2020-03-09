class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :employee_first_name, null: false
      t.string :employee_last_name, null: false
      t.string :employee_email, null: false
      t.string :employee_phone, null: false
      t.references :employee_status, null: false, foreign_key: true
      t.references :employee_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
