require 'test_helper'

class StoreOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @store_order = store_orders(:one)
  end

  test "should get index" do
    get store_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_store_order_url
    assert_response :success
  end

  test "should create store_order" do
    assert_difference('StoreOrder.count') do
      post store_orders_url, params: { store_order: { order_id: @store_order.order_id, store_id: @store_order.store_id } }
    end

    assert_redirected_to store_order_url(StoreOrder.last)
  end

  test "should show store_order" do
    get store_order_url(@store_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_store_order_url(@store_order)
    assert_response :success
  end

  test "should update store_order" do
    patch store_order_url(@store_order), params: { store_order: { order_id: @store_order.order_id, store_id: @store_order.store_id } }
    assert_redirected_to store_order_url(@store_order)
  end

  test "should destroy store_order" do
    assert_difference('StoreOrder.count', -1) do
      delete store_order_url(@store_order)
    end

    assert_redirected_to store_orders_url
  end
end
