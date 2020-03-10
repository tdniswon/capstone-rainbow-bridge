class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :order_type
  belongs_to :order_status
  has_many :order_lines
  has_many :rental_lines

  validates :order_due_date, presence: true
  validates :order_start_date, presence: true

  accepts_nested_attributes_for :order_lines
  accepts_nested_attributes_for :rental_lines

  rails_admin do
    nested do
      configure :customer do
        hide
      end
    end
  end

  rails_admin do
    object_label_method :display_name
  end

  def display_name
      self.order_description
  end

end
