class OrderLineRestriction < ApplicationRecord
  belongs_to :order_line
  belongs_to :dietary_restriction

  rails_admin do
    nested do
      configure :order_line do
        hide
      end
    end
  end

  has_paper_trail
end
