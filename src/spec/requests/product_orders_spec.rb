require 'rails_helper'

RSpec.describe "ProductOrders", type: :request do
  describe "GET /product_orders" do
    it "works! (now write some real specs)" do
      get product_orders_path
      expect(response).to have_http_status(200)
    end
  end
end
