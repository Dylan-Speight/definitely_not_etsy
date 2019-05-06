require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get welcome_index_url
    assert_response :success
  end

  test "should get account" do
    get welcome_account_url
    assert_response :success
  end

  test "should get browse" do
    get welcome_browse_url
    assert_response :success
  end

  test "should get my_store" do
    get welcome_my_store_url
    assert_response :success
  end

end
