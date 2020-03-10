class OrderLine < ApplicationRecord
  belongs_to :product
  belongs_to :order_line_status
  belongs_to :order
  has_many :tiers
  has_many :tasks
  has_many :order_line_restrictions

  validates :order_line_start_date, presence: true

  accepts_nested_attributes_for :tiers
  accepts_nested_attributes_for :tasks
  accepts_nested_attributes_for :order_line_restrictions

  rails_admin do
    nested do
      configure :order do
        hide
      end
    end
  end

  rails_admin do
    object_label_method :display_name
  end

  def display_name
      self.order_line_description
  end
  
end
