json.extract! product, :id, :name, :email, :created_at, :updated_at
json.url product_url(product, format: :json)