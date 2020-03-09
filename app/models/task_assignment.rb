class TaskAssignment < ApplicationRecord
  belongs_to :task
  belongs_to :employee

  rails_admin do
    nested do
      configure :task do
        hide
      end
    end
  end
end
