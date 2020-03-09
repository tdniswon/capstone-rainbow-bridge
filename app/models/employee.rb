class Employee < ApplicationRecord
  belongs_to :employee_status
  belongs_to :employee_type
  has_many :task_assignments

  rails_admin do
    object_label_method :display_name
  end

  def display_name
    if self.employee_first_name != nil && self.employee_last_name != nil
      self.employee_first_name + ' ' + self.employee_last_name
    end
  end
end
