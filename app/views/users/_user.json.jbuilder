json.extract! user, :id, :username, :email_address, :address, :created_at, :updated_at
json.url user_url(user, format: :json)
