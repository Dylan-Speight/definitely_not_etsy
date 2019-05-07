require 'rails_helper'

RSpec.describe "product_orders/edit", type: :view do
  before(:each) do
    @product_order = assign(:product_order, ProductOrder.create!())
  end

  it "renders the edit product_order form" do
    render

    assert_select "form[action=?][method=?]", product_order_path(@product_order), "post" do
    end
  end
end
