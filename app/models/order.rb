class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :order_type
  belongs_to :order_status
  has_many :order_lines
  has_many :rental_lines
  has_many_attached :inspiration_images

  validates :order_description, format: {with: /\A[-a-zA-Z0-9. ]+\z/, message: 'Only Alphanumerical and Numbers Allowed'}, allow_blank: true
  validates :delivery_street_address, format: {with: /\A[-a-zA-Z0-9. ]+\z/, message: 'Only Alphanumerical and Numbers Allowed'}, allow_blank: true
  validates :delivery_city, format: {with: /\A[-a-zA-Z. ]+\z/, message: 'Only Alphanumerical'}, allow_blank: true
  validates :delivery_state, format: {with: /\A[a-zA-Z ]+\z/, message: 'Only Alphanumerical'}, allow_blank: true
  validates :delivery_zip_code, length: {is: 5}, numericality: true, allow_blank: true
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

  has_paper_trail
end
