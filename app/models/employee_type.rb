class EmployeeType < ApplicationRecord
    has_many :employees

    rails_admin do
        object_label_method :display_name
    end

    def display_name
        self.employee_type_description
    end
end
