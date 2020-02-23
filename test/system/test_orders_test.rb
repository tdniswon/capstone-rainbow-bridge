require "application_system_test_case"

class TestOrdersTest < ApplicationSystemTestCase
  setup do
    @test_order = test_orders(:one)
  end

  test "visiting the index" do
    visit test_orders_url
    assert_selector "h1", text: "Test Orders"
  end

  test "creating a Test order" do
    visit test_orders_url
    click_on "New Test Order"

    fill_in "Name", with: @test_order.name
    fill_in "Notes", with: @test_order.notes
    click_on "Create Test order"

    assert_text "Test order was successfully created"
    click_on "Back"
  end

  test "updating a Test order" do
    visit test_orders_url
    click_on "Edit", match: :first

    fill_in "Name", with: @test_order.name
    fill_in "Notes", with: @test_order.notes
    click_on "Update Test order"

    assert_text "Test order was successfully updated"
    click_on "Back"
  end

  test "destroying a Test order" do
    visit test_orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Test order was successfully destroyed"
  end
end
