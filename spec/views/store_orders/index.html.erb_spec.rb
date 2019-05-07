require 'rails_helper'

RSpec.describe "store_orders/index", type: :view do
  before(:each) do
    assign(:store_orders, [
      StoreOrder.create!(),
      StoreOrder.create!()
    ])
  end

  it "renders a list of store_orders" do
    render
  end
end
