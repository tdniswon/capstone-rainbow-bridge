json.extract! test_product, :id, :name, :description, :notes, :test_order_id, :created_at, :updated_at
json.url test_product_url(test_product, format: :json)
