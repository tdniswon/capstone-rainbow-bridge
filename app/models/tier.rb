class Tier < ApplicationRecord
  belongs_to :cake_flavor
  belongs_to :frosting_flavor
  belongs_to :shape
  belongs_to :order_line
end
