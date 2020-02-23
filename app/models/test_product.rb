class TestProduct < ApplicationRecord
  # Added by Tyler 2/11, for testing products
  belongs_to :test_order
  has_many_attached :images
end