class RentalLine < ApplicationRecord
  belongs_to :order
  belongs_to :rental_item
end
