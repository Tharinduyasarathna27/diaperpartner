class CreateDiaperBankUser < ActiveRecord::Migration[5.1]
  def change
    create_table :diaper_bank_users do |t|
      t.belongs_to :diaper_bank, index: true, type: :integer
      t.belongs_to :user, index: true, type: :integer

      t.timestamps
    end
  end
end
