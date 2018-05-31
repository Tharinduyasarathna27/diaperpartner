class CreateLineItems < ActiveRecord::Migration[5.1]
  def change
    create_table :line_items do |t|

      t.belongs_to :order, index: true, type: :integer
      t.belongs_to :item, index: true, type: :integer
      t.integer :quantity, null: false

      t.timestamps
    end
  end
end
