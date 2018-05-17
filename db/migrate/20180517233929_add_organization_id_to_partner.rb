class AddOrganizationIdToPartner < ActiveRecord::Migration[5.1]
  def change
    add_column :partners, :organization_id, :integer, null: false
  end
end
