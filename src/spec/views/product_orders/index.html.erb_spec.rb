require 'rails_helper'

RSpec.describe "product_orders/index", type: :view do
  before(:each) do
    assign(:product_orders, [
      ProductOrder.create!(),
      ProductOrder.create!()
    ])
  end

  it "renders a list of product_orders" do
    render
  end
end
