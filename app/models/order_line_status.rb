class OrderLineStatus < ApplicationRecord
    has_many :order_lines

    rails_admin do
        object_label_method :display_name
    end

    def display_name
        self.order_line_status_name
    end
end
