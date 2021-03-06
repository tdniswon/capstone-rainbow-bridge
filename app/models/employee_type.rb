class EmployeeType < ApplicationRecord
    has_many :employees

    validates :employee_type_description, presence: true

    rails_admin do
        object_label_method :display_name
    end

    def display_name
        self.employee_type_description
    end

    has_paper_trail
end
