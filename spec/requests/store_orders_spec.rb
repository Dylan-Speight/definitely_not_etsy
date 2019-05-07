require 'rails_helper'

RSpec.describe "StoreOrders", type: :request do
  describe "GET /store_orders" do
    it "works! (now write some real specs)" do
      get store_orders_path
      expect(response).to have_http_status(200)
    end
  end
end
