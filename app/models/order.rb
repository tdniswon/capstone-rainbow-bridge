class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :order_type
  belongs_to :order_status
end
