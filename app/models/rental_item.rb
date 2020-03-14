class RentalItem < ApplicationRecord
    has_many :rental_lines

    validates :rental_item_name, presence: true, format: {with: /\A[a-zA-Z0-9]+\z/, message: 'Only Alphanumerical and Numbers Allowed'}
    validates :rental_item_description, format: {with: /\A[a-zA-Z0-9]+\z/, message: 'Only Alphanumerical and Numbers Allowed'}, allow_blank: true
    validates :rental_item_cost,  allow_blank: true, numericality: true
    rails_admin do
        object_label_method :display_name
    end

    def display_name
        self.rental_item_name
    end
end
