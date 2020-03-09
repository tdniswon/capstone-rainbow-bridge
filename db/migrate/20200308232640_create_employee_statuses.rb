class CreateEmployeeStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :employee_statuses do |t|
      t.string :employee_status_name, null: false

      t.timestamps
    end
  end
end
