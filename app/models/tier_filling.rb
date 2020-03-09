class TierFilling < ApplicationRecord
  belongs_to :tier
  belongs_to :filling

  rails_admin do
    nested do
      configure :order_line do
        hide
      end
    end
  end
  
end
