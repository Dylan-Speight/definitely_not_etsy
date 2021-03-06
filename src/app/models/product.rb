class Product < ApplicationRecord
    belongs_to :store
    has_many :product_orders
    has_one_attached :image

    resourcify

    validates :store_id, presence: true

    delegate :store_name, to: :store
  
    after_commit :has_image, on: [:create, :update]

    private

    def has_image
        unless image.attached?
            self.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'placeholder.png')), filename: 'placeholder.png', content_type: 'image/png')
        end
    end
  
    def self.search_by(search_term)
        where("LOWER(name) Like :search_term OR LOWER(category) Like :search_term OR LOWER(description) Like :search_term", search_term: "%#{search_term.downcase}%")
    end
  
end
