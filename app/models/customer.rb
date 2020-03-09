class Customer < ApplicationRecord
  belongs_to :customer_status
  has_many :orders

  accepts_nested_attributes_for :orders

  rails_admin do
    object_label_method :display_name
  end

  def display_name
    if self.customer_first_name != nil && self.customer_last_name != nil
      self.customer_first_name + ' ' + self.customer_last_name
    end
  end
end
