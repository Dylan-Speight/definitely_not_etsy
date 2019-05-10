class Product < ApplicationRecord
    belongs_to :store
    has_many :product_orders

    validates :store_id, presence: true
    delegate :store_name, to: :store

    def self.search_by(search_term)
        where("LOWER(name) Like :search_term", search_term: "%#{search_term.downcase}%")
    end
end
