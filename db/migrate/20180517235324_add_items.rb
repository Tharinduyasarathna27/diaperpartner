class AddItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string "name"
      t.string "category"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.integer "barcode_count"
      t.integer "organization_id"
    end
  end
end
