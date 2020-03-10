class Employee < ApplicationRecord
  belongs_to :employee_status
  belongs_to :employee_type
  has_many :task_assignments

  validates :employee_first_name, presence: true
  validates :employee_last_name, presence: true
  validates :empployee_email, presence: true
  validates :employee_phone, presence: true
  validates :employee_phone, length: {minimum: 10}
  rails_admin do
    object_label_method :display_name
  end

  def display_name
    if self.employee_first_name != nil && self.employee_last_name != nil
      self.employee_first_name + ' ' + self.employee_last_name
    end
  end
end
