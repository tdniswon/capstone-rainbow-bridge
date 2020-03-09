class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :task_name, null: false
      t.string :task_description
      t.datetime :task_start_date, null: false
      t.datetime :task_due_date, null: false
      t.datetime :task_finish_date
      t.references :task_status, null: false, foreign_key: true
      t.references :order_line, null: false, foreign_key: true 

      t.timestamps
    end
  end
end
