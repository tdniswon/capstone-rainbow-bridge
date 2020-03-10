class OrderStatus < ApplicationRecord
    has_many :orders

    validates :order_status_name, presence: true

    rails_admin do
        object_label_method :display_name
    end

    def display_name
        self.order_status_name
    end
end
