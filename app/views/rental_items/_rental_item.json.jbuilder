json.extract! rental_item, :id, :rental_item_name, :rental_item_description, :rental_item_cost, :created_at, :updated_at
json.url rental_item_url(rental_item, format: :json)
