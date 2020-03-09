json.extract! rental_line, :id, :order_id, :rental_item_id, :created_at, :updated_at
json.url rental_line_url(rental_line, format: :json)
