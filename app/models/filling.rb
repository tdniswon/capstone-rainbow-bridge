class Filling < ApplicationRecord
    has_many :tier_fillings

    validates :filling_name, presence: true, format: {with: /\A[a-zA-Z0-9 ]+\z/, message: 'Only Alphanumerical and Numbers Allowed'}

    rails_admin do
        object_label_method :display_name
    end

    def display_name
        self.filling_name
    end

    has_paper_trail
end
