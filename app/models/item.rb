class Item < ApplicationRecord
  has_many :partners, primary_key: :organization_id, foreign_key: :organization_id
end
