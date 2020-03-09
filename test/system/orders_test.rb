require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
  setup do
    @order = orders(:one)
  end

  test "visiting the index" do
    visit orders_url
    assert_selector "h1", text: "Orders"
  end

  test "creating a Order" do
    visit orders_url
    click_on "New Order"

    fill_in "Customer", with: @order.customer_id
    fill_in "Delivery city", with: @order.delivery_city
    fill_in "Delivery state", with: @order.delivery_state
    fill_in "Delivery street address", with: @order.delivery_street_address
    fill_in "Delivery zip code", with: @order.delivery_zip_code
    fill_in "Order cost", with: @order.order_cost
    fill_in "Order date finish", with: @order.order_date_finish
    check "Order delivery" if @order.order_delivery
    fill_in "Order description", with: @order.order_description
    fill_in "Order due date", with: @order.order_due_date
    fill_in "Order start date", with: @order.order_start_date
    fill_in "Order status", with: @order.order_status_id
    fill_in "Order type", with: @order.order_type_id
    click_on "Create Order"

    assert_text "Order was successfully created"
    click_on "Back"
  end

  test "updating a Order" do
    visit orders_url
    click_on "Edit", match: :first

    fill_in "Customer", with: @order.customer_id
    fill_in "Delivery city", with: @order.delivery_city
    fill_in "Delivery state", with: @order.delivery_state
    fill_in "Delivery street address", with: @order.delivery_street_address
    fill_in "Delivery zip code", with: @order.delivery_zip_code
    fill_in "Order cost", with: @order.order_cost
    fill_in "Order date finish", with: @order.order_date_finish
    check "Order delivery" if @order.order_delivery
    fill_in "Order description", with: @order.order_description
    fill_in "Order due date", with: @order.order_due_date
    fill_in "Order start date", with: @order.order_start_date
    fill_in "Order status", with: @order.order_status_id
    fill_in "Order type", with: @order.order_type_id
    click_on "Update Order"

    assert_text "Order was successfully updated"
    click_on "Back"
  end

  test "destroying a Order" do
    visit orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order was successfully destroyed"
  end
end
