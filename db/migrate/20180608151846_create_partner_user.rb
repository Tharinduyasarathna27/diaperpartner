class CreatePartnerUser < ActiveRecord::Migration[5.1]
  def change
    create_table :partner_users do |t|
      t.belongs_to :partner, index: true, type: :integer
      t.belongs_to :user, index: true, type: :integer

      t.timestamps
    end
  end
end
