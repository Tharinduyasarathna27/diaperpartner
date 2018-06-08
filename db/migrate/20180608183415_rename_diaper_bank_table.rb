class RenameDiaperBankTable < ActiveRecord::Migration[5.1]
  def change
    rename_table :diaper_bank, :diaper_banks
  end
end
