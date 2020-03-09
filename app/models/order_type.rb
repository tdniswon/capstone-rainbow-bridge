class OrderType < ApplicationRecord
    has_many :orders

    rails_admin do
        object_label_method :display_name
    end

    def display_name
        self.order_description
    end
end
