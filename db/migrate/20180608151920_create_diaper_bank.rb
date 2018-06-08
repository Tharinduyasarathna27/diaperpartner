class CreateDiaperBank < ActiveRecord::Migration[5.1]
  def change
    create_table :diaper_bank do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
