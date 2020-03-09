class OrderLineRestriction < ApplicationRecord
  belongs_to :order_line
  belongs_to :dietary_restriction
end
