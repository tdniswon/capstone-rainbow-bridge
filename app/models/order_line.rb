class OrderLine < ApplicationRecord
  belongs_to :product
  belongs_to :order_line_status
  belongs_to :order
end
