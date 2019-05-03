require 'test_helper'

class StoreNamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @store_name = store_names(:one)
  end

  test "should get index" do
    get store_names_url
    assert_response :success
  end

  test "should get new" do
    get new_store_name_url
    assert_response :success
  end

  test "should create store_name" do
    assert_difference('StoreName.count') do
      post store_names_url, params: { store_name: {  } }
    end

    assert_redirected_to store_name_url(StoreName.last)
  end

  test "should show store_name" do
    get store_name_url(@store_name)
    assert_response :success
  end

  test "should get edit" do
    get edit_store_name_url(@store_name)
    assert_response :success
  end

  test "should update store_name" do
    patch store_name_url(@store_name), params: { store_name: {  } }
    assert_redirected_to store_name_url(@store_name)
  end

  test "should destroy store_name" do
    assert_difference('StoreName.count', -1) do
      delete store_name_url(@store_name)
    end

    assert_redirected_to store_names_url
  end
end
