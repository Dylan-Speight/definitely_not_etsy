class Product < ApplicationRecord
    has_one :store
    has_many :product_orders
end
