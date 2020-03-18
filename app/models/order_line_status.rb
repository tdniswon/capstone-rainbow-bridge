class OrderLineStatus < ApplicationRecord
    has_many :order_lines

    validates :order_line_status_name, presence: true, format: {with: /\A[a-zA-Z0-9]+\z/, message: 'Only Alphanumerical and Numbers Allowed'}

    rails_admin do
        object_label_method :display_name
    end

    def display_name
        self.order_line_status_name
    end
end
