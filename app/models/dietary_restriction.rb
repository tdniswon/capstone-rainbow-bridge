class DietaryRestriction < ApplicationRecord
    has_many :order_line_restrictions

    rails_admin do
        object_label_method :display_name
    end

    def display_name
        self.dietary_restriction_name
    end
end
