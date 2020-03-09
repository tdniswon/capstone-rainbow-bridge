class EmployeeStatus < ApplicationRecord
    has_many :employees

    rails_admin do
        object_label_method :display_name
    end

    def display_name
        self.employee_status_name
    end
end
