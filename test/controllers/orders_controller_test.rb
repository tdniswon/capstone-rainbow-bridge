require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get orders_url
    assert_response :success
  end

  test "should get new" do
    get new_order_url
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post orders_url, params: { order: { customer_id: @order.customer_id, delivery_city: @order.delivery_city, delivery_state: @order.delivery_state, delivery_street_address: @order.delivery_street_address, delivery_zip_code: @order.delivery_zip_code, order_cost: @order.order_cost, order_date_finish: @order.order_date_finish, order_delivery: @order.order_delivery, order_description: @order.order_description, order_due_date: @order.order_due_date, order_start_date: @order.order_start_date, order_status_id: @order.order_status_id, order_type_id: @order.order_type_id } }
    end

    assert_redirected_to order_url(Order.last)
  end

  test "should show order" do
    get order_url(@order)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_url(@order)
    assert_response :success
  end

  test "should update order" do
    patch order_url(@order), params: { order: { customer_id: @order.customer_id, delivery_city: @order.delivery_city, delivery_state: @order.delivery_state, delivery_street_address: @order.delivery_street_address, delivery_zip_code: @order.delivery_zip_code, order_cost: @order.order_cost, order_date_finish: @order.order_date_finish, order_delivery: @order.order_delivery, order_description: @order.order_description, order_due_date: @order.order_due_date, order_start_date: @order.order_start_date, order_status_id: @order.order_status_id, order_type_id: @order.order_type_id } }
    assert_redirected_to order_url(@order)
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete order_url(@order)
    end

    assert_redirected_to orders_url
  end
end
