class Order < ApplicationRecord
    has_one :user
    has_many :store_orders
end
