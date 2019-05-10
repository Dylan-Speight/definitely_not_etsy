class StoreOrder < ApplicationRecord
    has_many :stores
    has_many :orders
end
