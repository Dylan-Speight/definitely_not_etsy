require 'rails_helper'

RSpec.describe "store_orders/show", type: :view do
  before(:each) do
    @store_order = assign(:store_order, StoreOrder.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
