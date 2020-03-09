json.extract! customer, :id, :customer_first_name, :customer_last_name, :customer_email, :customer_phone, :customer_street_address, :customer_city, :customer_state, :customer_zip_code, :customer_status_id, :created_at, :updated_at
json.url customer_url(customer, format: :json)
