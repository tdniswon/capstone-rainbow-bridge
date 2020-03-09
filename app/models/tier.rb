class Tier < ApplicationRecord
  belongs_to :cake_flavor
  belongs_to :frosting_flavor
  belongs_to :shape
  belongs_to :order_line
  has_many :tier_fillings

  accepts_nested_attributes_for :tier_fillings

  rails_admin do
    nested do
      configure :order_line do
        hide
      end
    end
  end

  rails_admin do
    object_label_method :display_name
  end

  def display_name
      "Order Line " + self.order_line_id.to_s + ' Position ' + self.position.to_s
  end
end
