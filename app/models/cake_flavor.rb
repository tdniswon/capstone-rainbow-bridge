class CakeFlavor < ApplicationRecord
    has_many :tiers

    validates :cake_name, presence: true

    rails_admin do
        object_label_method :display_name
    end

    def display_name
        self.flavor_name
    end
end
