require 'rails_helper'

RSpec.describe "product_orders/show", type: :view do
  before(:each) do
    @product_order = assign(:product_order, ProductOrder.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
