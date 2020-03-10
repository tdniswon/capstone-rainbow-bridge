class Filling < ApplicationRecord
    has_many :tier_fillings

    validates :filling_name, presence: true
    validates :filling_description, presence: true

    rails_admin do
        object_label_method :display_name
    end

    def display_name
        self.filling_name
    end
end
