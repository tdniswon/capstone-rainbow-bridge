class TierFilling < ApplicationRecord
  belongs_to :tier
  belongs_to :filling

  rails_admin do
    nested do
      configure :tier do
        hide
      end
    end
  end
  
  has_paper_trail
end
