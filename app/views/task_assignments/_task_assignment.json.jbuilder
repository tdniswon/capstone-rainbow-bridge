json.extract! task_assignment, :id, :task_id, :employee_id, :created_at, :updated_at
json.url task_assignment_url(task_assignment, format: :json)
