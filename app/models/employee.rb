class Employee < ApplicationRecord
  belongs_to :employee_status
  belongs_to :employee_type
end
