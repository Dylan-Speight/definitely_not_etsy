json.extract! store_order, :id, :store_id, :order_id, :created_at, :updated_at
json.url store_order_url(store_order, format: :json)
