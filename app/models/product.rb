class Product < ApplicationRecord
    has_many :order_lines

    validates :product_name, presence: true
    validates :product_description, presence: true

    rails_admin do
        object_label_method :display_name
    end

    def display_name
        self.product_name
    end
end
