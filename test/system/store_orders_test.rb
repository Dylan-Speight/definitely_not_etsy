require "application_system_test_case"

class StoreOrdersTest < ApplicationSystemTestCase
  setup do
    @store_order = store_orders(:one)
  end

  test "visiting the index" do
    visit store_orders_url
    assert_selector "h1", text: "Store Orders"
  end

  test "creating a Store order" do
    visit store_orders_url
    click_on "New Store Order"

    fill_in "Order", with: @store_order.order_id
    fill_in "Store", with: @store_order.store_id
    click_on "Create Store order"

    assert_text "Store order was successfully created"
    click_on "Back"
  end

  test "updating a Store order" do
    visit store_orders_url
    click_on "Edit", match: :first

    fill_in "Order", with: @store_order.order_id
    fill_in "Store", with: @store_order.store_id
    click_on "Update Store order"

    assert_text "Store order was successfully updated"
    click_on "Back"
  end

  test "destroying a Store order" do
    visit store_orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Store order was successfully destroyed"
  end
end
