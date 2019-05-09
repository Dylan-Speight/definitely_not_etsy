class Store < ApplicationRecord
    belongs_to :user
    has_many :products
    has_many :store_orders
end
