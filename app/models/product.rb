class Product < ApplicationRecord
    has_many :order_lines

    rails_admin do
        object_label_method :display_name
    end

    def display_name
        self.product_name
    end
end
