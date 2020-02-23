require "application_system_test_case"

class TestProductsTest < ApplicationSystemTestCase
  setup do
    @test_product = test_products(:one)
  end

  test "visiting the index" do
    visit test_products_url
    assert_selector "h1", text: "Test Products"
  end

  test "creating a Test product" do
    visit test_products_url
    click_on "New Test Product"

    fill_in "Description", with: @test_product.description
    fill_in "Name", with: @test_product.name
    fill_in "Notes", with: @test_product.notes
    fill_in "Test order", with: @test_product.test_order_id
    click_on "Create Test product"

    assert_text "Test product was successfully created"
    click_on "Back"
  end

  test "updating a Test product" do
    visit test_products_url
    click_on "Edit", match: :first

    fill_in "Description", with: @test_product.description
    fill_in "Name", with: @test_product.name
    fill_in "Notes", with: @test_product.notes
    fill_in "Test order", with: @test_product.test_order_id
    click_on "Update Test product"

    assert_text "Test product was successfully updated"
    click_on "Back"
  end

  test "destroying a Test product" do
    visit test_products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Test product was successfully destroyed"
  end
end
