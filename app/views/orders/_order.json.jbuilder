json.extract! order, :id, :order_description, :order_cost, :order_start_date, :order_due_date, :order_date_finish, :order_delivery, :delivery_street_address, :delivery_city, :delivery_state, :delivery_zip_code, :customer_id, :order_type_id, :order_status_id, :created_at, :updated_at
json.url order_url(order, format: :json)
