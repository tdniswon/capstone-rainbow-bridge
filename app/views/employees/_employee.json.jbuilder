json.extract! employee, :id, :employee_first_name, :employee_last_name, :employee_email, :employee_phone, :employee_status_id, :employee_type_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
