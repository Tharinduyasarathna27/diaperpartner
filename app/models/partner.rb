class Partner < ApplicationRecord
  validates :name, presence: true
  has_one_attached :scan_990
  has_one_attached :proof_of_agency_status

  PERMITTED_COLUMNS = column_names - %w[id created_at updated_at diaper_bank_id status]
end
