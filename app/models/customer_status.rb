class CustomerStatus < ApplicationRecord
    has_many :customers

    rails_admin do
        object_label_method :display_name
    end

    def display_name
        self.customer_status_name
    end
end
