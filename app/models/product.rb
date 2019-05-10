class Product < ApplicationRecord
    belongs_to :store
    has_many :product_orders
    has_one_attached :image

    validates :store_id, presence: true

    delegate :store_name, to: :store

    after_commit :has_image, on: [:create, :update]

    private

    def has_image
        unless image.attached?
            self.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'hero-bg.jpg')), filename: 'hero-bg.jpg', content_type: 'image/png')
        end
    end
end
