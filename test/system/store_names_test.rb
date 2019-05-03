require "application_system_test_case"

class StoreNamesTest < ApplicationSystemTestCase
  setup do
    @store_name = store_names(:one)
  end

  test "visiting the index" do
    visit store_names_url
    assert_selector "h1", text: "Store Names"
  end

  test "creating a Store name" do
    visit store_names_url
    click_on "New Store Name"

    click_on "Create Store name"

    assert_text "Store name was successfully created"
    click_on "Back"
  end

  test "updating a Store name" do
    visit store_names_url
    click_on "Edit", match: :first

    click_on "Update Store name"

    assert_text "Store name was successfully updated"
    click_on "Back"
  end

  test "destroying a Store name" do
    visit store_names_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Store name was successfully destroyed"
  end
end
