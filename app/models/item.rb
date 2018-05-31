class Item < ApplicationRecord
  has_many :partners, primary_key: :organization_id, foreign_key: :organization_id
  has_many :line_items
end
