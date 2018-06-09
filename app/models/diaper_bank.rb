class DiaperBank < ApplicationRecord
  validates :name, presence: true

  has_many :diaper_bank_users
end
