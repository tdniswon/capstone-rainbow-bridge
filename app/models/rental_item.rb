class RentalItem < ApplicationRecord
    has_many :rental_lines

    validates :rental_item_name, presence: true

    rails_admin do
        object_label_method :display_name
    end

    def display_name
        self.rental_item_name
    end
end
