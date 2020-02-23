require 'test_helper'

class TestProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @test_product = test_products(:one)
  end

  test "should get index" do
    get test_products_url
    assert_response :success
  end

  test "should get new" do
    get new_test_product_url
    assert_response :success
  end

  test "should create test_product" do
    assert_difference('TestProduct.count') do
      post test_products_url, params: { test_product: { description: @test_product.description, name: @test_product.name, notes: @test_product.notes, test_order_id: @test_product.test_order_id } }
    end

    assert_redirected_to test_product_url(TestProduct.last)
  end

  test "should show test_product" do
    get test_product_url(@test_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_test_product_url(@test_product)
    assert_response :success
  end

  test "should update test_product" do
    patch test_product_url(@test_product), params: { test_product: { description: @test_product.description, name: @test_product.name, notes: @test_product.notes, test_order_id: @test_product.test_order_id } }
    assert_redirected_to test_product_url(@test_product)
  end

  test "should destroy test_product" do
    assert_difference('TestProduct.count', -1) do
      delete test_product_url(@test_product)
    end

    assert_redirected_to test_products_url
  end
end
