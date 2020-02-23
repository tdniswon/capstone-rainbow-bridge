require 'test_helper'

class TestOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @test_order = test_orders(:one)
  end

  test "should get index" do
    get test_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_test_order_url
    assert_response :success
  end

  test "should create test_order" do
    assert_difference('TestOrder.count') do
      post test_orders_url, params: { test_order: { name: @test_order.name, notes: @test_order.notes } }
    end

    assert_redirected_to test_order_url(TestOrder.last)
  end

  test "should show test_order" do
    get test_order_url(@test_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_test_order_url(@test_order)
    assert_response :success
  end

  test "should update test_order" do
    patch test_order_url(@test_order), params: { test_order: { name: @test_order.name, notes: @test_order.notes } }
    assert_redirected_to test_order_url(@test_order)
  end

  test "should destroy test_order" do
    assert_difference('TestOrder.count', -1) do
      delete test_order_url(@test_order)
    end

    assert_redirected_to test_orders_url
  end
end
