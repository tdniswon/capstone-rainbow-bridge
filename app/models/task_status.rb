class TaskStatus < ApplicationRecord
    has_many :tasks

    validates :task_status_name, presence: true

    rails_admin do
        object_label_method :display_name
    end

    def display_name
        self.task_status_name
    end

    has_paper_trail
end
