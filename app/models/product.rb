class Product < ApplicationRecord
    belongs_to :store
    has_many :product_orders

    validates :store_id, presence: true
    delegate :store_name, to: :store
end
