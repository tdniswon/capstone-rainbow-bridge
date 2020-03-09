class CreateTaskStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :task_statuses do |t|
      t.string :task_status_name, null: false

      t.timestamps
    end
  end
end
