class TestOrder < ApplicationRecord
    has_many :test_products

    has_paper_trail

    accepts_nested_attributes_for :test_products
end
