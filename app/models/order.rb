class Order < ApplicationRecord
  belongs_to :partner

  # Need inverse_of because https://github.com/rails/rails/issues/25198
  has_many :line_items, inverse_of: :order do
    def total
      self.sum(:quantity)
    end
  end

  has_many :items, through: :line_items

  accepts_nested_attributes_for :line_items,
    allow_destroy: true,
    :reject_if => proc { |li| li[:item_id].blank? || li[:quantity].blank? }

  validates_associated :line_items
end
