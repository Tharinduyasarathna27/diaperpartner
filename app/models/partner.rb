class Partner < ApplicationRecord
  has_many :items, primary_key: :organization_id, foreign_key: :organization_id
  has_many :orders
end
