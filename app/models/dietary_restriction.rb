class DietaryRestriction < ApplicationRecord
    has_many :order_line_restrictions

    validates :dietary_restriction_name, presence: true

    rails_admin do
        object_label_method :display_name
    end

    def display_name
        self.dietary_restriction_name
    end
end
