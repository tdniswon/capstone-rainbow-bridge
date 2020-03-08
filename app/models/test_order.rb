class TestOrder < ApplicationRecord
    has_many :test_products

    accepts_nested_attributes_for :test_products
end
