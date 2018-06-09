class DiaperBankUser < ApplicationRecord
  validates :diaper_bank, presence: true
  validates :user, presence: true

  belongs_to :diaper_bank
  belongs_to :user
end
