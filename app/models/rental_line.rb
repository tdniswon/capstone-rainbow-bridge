class RentalLine < ApplicationRecord
  belongs_to :order
  belongs_to :rental_item

  rails_admin do
    nested do
      configure :order do
        hide
      end
    end
  end
  
  has_paper_trail
end
