json.extract! order_line, :id, :order_line_description, :order_line_start_date, :order_line_finish_date, :special_order_notes, :product_id, :order_line_status_id, :created_at, :updated_at
json.url order_line_url(order_line, format: :json)
