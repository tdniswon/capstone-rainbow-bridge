json.extract! task, :id, :task_name, :task_description, :task_start_date, :task_due_date, :task_finish_date, :task_status_id, :created_at, :updated_at
json.url task_url(task, format: :json)
