require 'rails_helper'

RSpec.describe "store_orders/new", type: :view do
  before(:each) do
    assign(:store_order, StoreOrder.new())
  end

  it "renders new store_order form" do
    render

    assert_select "form[action=?][method=?]", store_orders_path, "post" do
    end
  end
end
