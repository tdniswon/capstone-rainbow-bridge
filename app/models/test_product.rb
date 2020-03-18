class TestProduct < ApplicationRecord
  # Added by Tyler 2/11, for testing products
  belongs_to :test_order
  has_many_attached :images

  has_paper_trail

  rails_admin do
    nested do
      configure :test_order do
        hide
      end
    end
  end
end