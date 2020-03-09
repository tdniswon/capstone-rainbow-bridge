class RentalItem < ApplicationRecord
    has_many :rental_lines

    rails_admin do
        object_label_method :display_name
    end

    def display_name
        self.rental_item_name
    end
end
