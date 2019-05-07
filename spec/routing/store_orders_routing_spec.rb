require "rails_helper"

RSpec.describe StoreOrdersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/store_orders").to route_to("store_orders#index")
    end

    it "routes to #new" do
      expect(:get => "/store_orders/new").to route_to("store_orders#new")
    end

    it "routes to #show" do
      expect(:get => "/store_orders/1").to route_to("store_orders#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/store_orders/1/edit").to route_to("store_orders#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/store_orders").to route_to("store_orders#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/store_orders/1").to route_to("store_orders#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/store_orders/1").to route_to("store_orders#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/store_orders/1").to route_to("store_orders#destroy", :id => "1")
    end
  end
end
