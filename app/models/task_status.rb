class TaskStatus < ApplicationRecord
    has_many :tasks

    rails_admin do
        object_label_method :display_name
    end

    def display_name
        self.task_status_name
    end
end
