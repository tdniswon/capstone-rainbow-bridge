class FrostingFlavor < ApplicationRecord
    has_many :tiers

    validates :frosting_name, presence: true

    rails_admin do
        object_label_method :display_name
    end

    def display_name
        self.frosting_name
    end
end
