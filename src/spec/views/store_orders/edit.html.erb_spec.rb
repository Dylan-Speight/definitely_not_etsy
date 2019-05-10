require 'rails_helper'

RSpec.describe "store_orders/edit", type: :view do
  before(:each) do
    @store_order = assign(:store_order, StoreOrder.create!())
  end

  it "renders the edit store_order form" do
    render

    assert_select "form[action=?][method=?]", store_order_path(@store_order), "post" do
    end
  end
end
