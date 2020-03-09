class Filling < ApplicationRecord
    has_many :tier_fillings

    rails_admin do
        object_label_method :display_name
    end

    def display_name
        self.filling_name
    end
end
